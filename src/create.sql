CREATE TABLE Roles
(
  Rolename Text (255) NOT NULL,
  ApplicationName Text (255) NOT NULL,
    CONSTRAINT PKRoles PRIMARY KEY (Rolename, ApplicationName)
)

CREATE TABLE UsersInRoles
(
  Username Text (255) NOT NULL,
  Rolename Text (255) NOT NULL,
  ApplicationName Text (255) NOT NULL,
    CONSTRAINT PKUsersInRoles PRIMARY KEY (Username, Rolename, ApplicationName)
)

CREATE TABLE Users
(
  PKID Guid NOT NULL PRIMARY KEY,
  Username Text (255) NOT NULL,
  ApplicationName Text (255) NOT NULL,
  Email Text (128) NOT NULL,
  Comment Text (255),
  Password Text (128) NOT NULL,
  PasswordQuestion Text (255),
  PasswordAnswer Text (255),
  IsApproved YesNo, 
  LastActivityDate DateTime,
  LastLoginDate DateTime,
  LastPasswordChangedDate DateTime,
  CreationDate DateTime, 
  IsOnLine YesNo,
  IsLockedOut YesNo,
  LastLockedOutDate DateTime,
  FailedPasswordAttemptCount Integer,
  FailedPasswordAttemptWindowStart DateTime,
  FailedPasswordAnswerAttemptCount Integer,
  FailedPasswordAnswerAttemptWindowStart DateTime
)