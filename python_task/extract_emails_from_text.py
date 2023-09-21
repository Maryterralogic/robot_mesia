import re

def extract_emails_from_text(text):
    # Regular expression pattern to match email addresses
    pattern = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b'

    # Use re.findall to extract all matching email addresses from the text
    emails = re.findall(pattern, text)

    return emails

# Example usage:
if __name__ == "__main__":
    # Read text from a file (you can also provide the text directly)
    with open('email_list.txt', 'r') as file:
        text = file.read()

    # Extract email addresses from the text
    extracted_emails = extract_emails_from_text(text)

    # Print the extracted email addresses
    for email in extracted_emails:
        print(email)
