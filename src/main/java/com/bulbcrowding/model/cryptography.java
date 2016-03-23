/**
 * 
 */
package com.bulbcrowding.model;

/**
 * @author ROUINEB Hamza
 *
 *         This iterface makes any class that implements it, should override it
 *         methods
 */
public interface cryptography {

	public byte[] getNextSalt();

	public byte[] hash(char[] password, byte[] salt);

	public boolean isExpectedPassword(char[] password, byte[] salt, byte[] expectedHash);

	public String generateRandomPassword(int length);

}
