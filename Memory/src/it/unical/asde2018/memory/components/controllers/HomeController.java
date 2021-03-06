package it.unical.asde2018.memory.components.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;

import it.unical.asde2018.memory.components.services.GameService;
import it.unical.asde2018.memory.components.services.LobbyService;
import it.unical.asde2018.memory.components.services.LoginService;
import it.unical.asde2018.memory.model.Game;
import it.unical.asde2018.memory.model.Lobby;
import it.unical.asde2018.memory.model.Player;

@Controller
public class HomeController {

	@Autowired
	private LoginService loginService;
	@Autowired
	private LobbyService lobbyService;
	@Autowired
	private GameService gameService;

	@GetMapping("/")
	private String goToIndex(Model model, HttpSession session) {
		if(session.getAttribute("user") != null) {
			return "listLobbies";
		}
		return "index";
	}

	@PostMapping("/registration")
	private String registration(Model model, @RequestParam String username, @RequestParam String password) {
		if (!loginService.yetAnUser(username)) {
			loginService.savePlayer(username, password);
			model.addAttribute("successRegistration", username + " you are now registed, you can Sign in");
		} else
			model.addAttribute("errorRegistration", username + " has already been chosen has username");
		return "index";
	}

	@PostMapping("/login")
	private String login(Model model, HttpSession session, @RequestParam String username,
			@RequestParam String password) {
		if (loginService.playerExists(username, password)) {
			Long playerId = loginService.getPlayerId(username);
			Player player = new Player(playerId,username,password);
			session.setAttribute("user", player);
			model.addAttribute("lobbies", lobbyService.getLobbies());
			return "listLobbies";
		} else
			model.addAttribute("errorLogin", "Wrong credentials login!");
		return "index";
	}
	
	/*@GetMapping("redirectList")
	public String redirectList(HttpSession session, Model model) {
//		model.addAttribute("lobbies", lobbyService.getLobbies());
		return "listLobbies";
	}*/

	@RequestMapping("/logout")
	public String logout(HttpSession session, Model model) {
		session.invalidate();
		return "index";
	}
	
	@GetMapping("/result")
	private String result(Model model, HttpSession session) {
		return "result";
	}

	@GetMapping("/lobbyList")
	@ResponseBody
	public String getLobbyList(HttpSession session, Model model) throws JsonProcessingException {
		if (session.getAttribute("user") != null) {
//			User user = (User) session.getAttribute("user");
			JSONArray lob = lobbyList(session);
/*			List<Lobby> lobbies = lobbyService.getLobbies();
			String lob = "[";
			for (Lobby lobby : lobbies) {
				lob += new ObjectMapper().writeValueAsString(lobby)+",";
			}*/
			return lob.toJSONString();
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	private JSONArray lobbyList(HttpSession session) {

		JSONArray jsonArray = new JSONArray();
//

		Player cUser = (Player) session.getAttribute("user");
		String currentUser = cUser.getUsername();
		List<Lobby> lobbies = lobbyService.getLobbies();

		for (Lobby lobby : lobbies) {
			JSONObject jsonLobby = new JSONObject();
			jsonLobby.put("name", lobby.getName());
			jsonLobby.put("playerSize", lobby.getNumberOfPlayers());
			jsonLobby.put("currentUser", currentUser);
			JSONArray jsonPlayers = new JSONArray();
			for (Player user : lobby.getPlayers()) {
				JSONObject jsonPlayer = new JSONObject();
				jsonPlayer.put("player", user.getUsername());
				jsonPlayer.put("creator", lobby.getCreator().getUsername());
				jsonPlayers.add(jsonPlayer);

			}
			jsonLobby.put("userList", jsonPlayers);

			jsonArray.add(jsonLobby);
		}

		return jsonArray;
	}

//
	@RequestMapping("/createLobby")
	public String createLobby() {
		return "createLobby";
	}

	/*
	 * @RequestMapping({ "/startGame" }) public String joinLobby(HttpServletRequest
	 * request, HttpSession session, Model model) { return "game"; }
	 */

	@RequestMapping("/rules")
	public String rules(HttpSession session, Model model) {
		return "rules";
	}

	@RequestMapping("/matchHistory")
	public String matchHistory(HttpSession session, Model model) {
		List<Game> gamesList = gameService.getGamesOfAUser((Player)session.getAttribute("user"));
		model.addAttribute("gamesOfUser",gamesList);
		return "matchHistory";
	}

}
