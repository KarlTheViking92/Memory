package it.unical.asde2018.memory.components.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.unical.asde2018.memory.components.persistence.UserDAO;
import it.unical.asde2018.memory.components.persistence.PlayerDAO;
import it.unical.asde2018.memory.model.Player;
import it.unical.asde2018.memory.model.User;

@Service
public class LoginService {

	@Autowired
	private UserDAO credentialsDAO;
	@Autowired
	private PlayerDAO playerDAO;

	public boolean login(String username, String password) {
		return credentialsDAO.exists(new User(username, password));
	}

	public void setCredentials(String username, String password) {
		credentialsDAO.save(new User(username, password));
		playerDAO.savePlayer(new Player(username));
	}

	public List<Player> getAllUsers() {
		return playerDAO.getAllExistentUsers();
	}

	public boolean yetAnUser(String username) {
		return credentialsDAO.yetAnUser(username);
	}
}
