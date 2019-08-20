-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 10 Février 2019 à 12:28
-- Version du serveur :  10.0.36-MariaDB-0ubuntu0.16.04.1
-- Version de PHP :  7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `freetorrent`
--

-- --------------------------------------------------------

--
-- Structure de la table `blog_cats`
--

CREATE TABLE `blog_cats` (
  `catID` int(11) UNSIGNED NOT NULL,
  `catTitle` varchar(255) DEFAULT NULL,
  `catSlug` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blog_cats`
--

INSERT INTO `blog_cats` (`catID`, `catTitle`, `catSlug`) VALUES
(40, 'Gnu/Linux - PCLinuxOS', 'gnu-linux-pclinuxos'),
(39, 'Gnu/Linux - OpenSuse', 'gnu-linux-opensuse'),
(37, 'Gnu/Linux - Mageia', 'gnu-linux-mageia'),
(38, 'Gnu/Linux - Mint', 'gnu-linux-mint'),
(36, 'Gnu/Linux - Gentoo', 'gnu-linux-gentoo'),
(35, 'Gnu/Linux - Elementary', 'gnu-linux-elementary'),
(34, 'Gnu/Linux - CentOS', 'gnu-linux-centos'),
(33, 'Gnu/Linux - Autres Ubuntu', 'gnu-linux-autres-ubuntu'),
(32, 'Gnu/Linux - Ubuntu', 'gnu-linux-ubuntu'),
(31, 'Gnu/Linux - Autres Slackware', 'gnu-linux-autres-slackware'),
(30, 'Gnu/Linux - Slackware', 'gnu-linux-slackware'),
(29, 'Gnu/Linux - Autres Puppy', 'gnu-linux-autres-puppy'),
(27, 'xBSD - Autres OpenBSD', 'xbsd-autres-openbsd'),
(28, 'Gnu/Linux - Puppy', 'gnu-linux-puppy'),
(26, 'xBSD - OpenBSD', 'xbsd-openbsd'),
(24, 'xBSD - NetBSD', 'xbsd-netbsd'),
(25, 'xBSD - Autres NetBSD', 'xbsd-autres-netbsd'),
(23, 'xBSD - Autres FreeBSD', 'xbsd-autres-freebsd'),
(21, 'Gnu/Linux - Autres Fedora', 'gnu-linux-autres-fedora'),
(22, 'xBSD - FreeBSD', 'xbsd-freebsd'),
(19, 'Gnu/Linux - Autres Debian', 'gnu-linux-autres-debian'),
(20, 'Gnu/Linux - Fedora', 'gnu-linux-fedora'),
(18, 'Gnu/Linux - Debian', 'gnu-linux-debian'),
(17, 'Gnu/Linux - Autres Arch', 'gnu-linux-autres-arch'),
(16, 'Gnu/Linux - Arch', 'gnu-linux-arch'),
(14, 'Vidéos - Films', 'vidos-films'),
(15, 'Vidéos - Film d\'animation', 'vidos-film-d-animation'),
(13, 'Images & Photos', 'images-photos'),
(12, 'Documents / Ebooks', 'documents-ebooks'),
(11, 'Applications - xBSD', 'applications-xbsd'),
(10, 'Applications - Windows - Jeux', 'applications-windows-jeux'),
(8, 'Littérature', 'litterature'),
(7, 'Applications - Autres', 'applications-autres'),
(6, 'Applications - Mac', 'applications-mac'),
(5, 'Applications - Windows', 'applications-windows'),
(4, 'Applications - Gnu/Linux', 'applications-gnu-linux'),
(3, 'Presse', 'presse'),
(2, 'Vidéos - Autres', 'vidos-autres'),
(41, 'Applications - Gnu/Linux - Jeux', 'applications-gnu-linux-jeux'),
(43, 'Gnu/Linux - Autres', 'gnu-linux-autres'),
(44, 'Gnu/Linux - Autres CentOS', 'gnu-linux-autres-centos');

-- --------------------------------------------------------

--
-- Structure de la table `blog_licences`
--

CREATE TABLE `blog_licences` (
  `licenceID` int(11) UNSIGNED NOT NULL,
  `licenceTitle` varchar(255) NOT NULL,
  `licenceSlug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blog_licences`
--

INSERT INTO `blog_licences` (`licenceID`, `licenceTitle`, `licenceSlug`) VALUES
(23, 'CeCILL', 'cecill'),
(22, 'C.C. Public Domain', 'c-c-public-domain'),
(21, 'Apache 2.0', 'apache-2-0'),
(20, 'C.C. 0', 'c-c-0'),
(17, 'FreeBSD', 'freebsd'),
(16, 'AGPL', 'agpl'),
(14, 'C.C. By-Nc-Nd', 'c-c-by-nc-nd'),
(13, 'C.C. By-Nc-Sa', 'c-c-by-nc-sa'),
(12, 'C.C. By-Nc', 'c-c-by-nc'),
(2, 'GPL V3', 'gpl-v3'),
(3, 'LGPL V2', 'lgpl-v2'),
(4, 'LGPL V3', 'lgpl-v3'),
(6, 'BSD', 'bsd'),
(7, 'MIT', 'mit'),
(9, 'C.C. By', 'c-c-by'),
(10, 'C.C. By-Nd', 'c-c-by-nd'),
(11, 'C.C. By-Sa', 'c-c-by-sa'),
(26, 'LAL', 'lal'),
(27, 'BDL SleepyCat', 'bdl-sleepycat');

-- --------------------------------------------------------

--
-- Structure de la table `blog_logs`
--

CREATE TABLE `blog_logs` (
  `log_id` int(11) NOT NULL,
  `remote_addr` varchar(255) CHARACTER SET latin1 NOT NULL,
  `request_uri` varchar(255) CHARACTER SET latin1 NOT NULL,
  `message` text CHARACTER SET latin1 NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blog_logs`
--


-- --------------------------------------------------------

--
-- Structure de la table `blog_members`
--

CREATE TABLE `blog_members` (
  `memberID` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pid` varchar(32) NOT NULL,
  `memberDate` datetime NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blog_members`
--


--
-- Structure de la table `blog_messages`
--

CREATE TABLE `blog_messages` (
  `messages_id` int(11) NOT NULL,
  `messages_id_expediteur` int(11) NOT NULL DEFAULT '0',
  `messages_id_destinataire` int(11) NOT NULL DEFAULT '0',
  `messages_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `messages_titre` text NOT NULL,
  `messages_message` text NOT NULL,
  `messages_lu` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blog_messages`
--

-- --------------------------------------------------------

--
-- Structure de la table `blog_posts_comments`
--

CREATE TABLE `blog_posts_comments` (
  `cid` int(10) NOT NULL,
  `cid_torrent` int(10) NOT NULL,
  `cid_parent` int(10) NOT NULL DEFAULT '0',
  `cadded` datetime NOT NULL,
  `ctext` text NOT NULL,
  `cuser` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blog_posts_comments`
--

-- --------------------------------------------------------

--
-- Structure de la table `blog_posts_seo`
--

CREATE TABLE `blog_posts_seo` (
  `postID` int(11) UNSIGNED NOT NULL,
  `postHash` varchar(40) NOT NULL,
  `postTitle` varchar(255) DEFAULT NULL,
  `postAuthor` varchar(255) NOT NULL,
  `postSlug` varchar(255) DEFAULT NULL,
  `postLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `postDesc` text,
  `postCont` text,
  `postTaille` bigint(20) NOT NULL DEFAULT '0',
  `postDate` datetime DEFAULT NULL,
  `postTorrent` varchar(150) NOT NULL,
  `postImage` varchar(255) NOT NULL,
  `postViews` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blog_posts_seo`
--

--
-- Structure de la table `blog_post_cats`
--

CREATE TABLE `blog_post_cats` (
  `id` int(11) UNSIGNED NOT NULL,
  `postID` int(11) DEFAULT NULL,
  `catID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blog_post_cats`
--

--
-- Structure de la table `blog_post_licences`
--

CREATE TABLE `blog_post_licences` (
  `id_BPL` int(11) UNSIGNED NOT NULL,
  `postID_BPL` int(11) NOT NULL,
  `licenceID_BPL` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blog_post_licences`
--

--
-- Structure de la table `compteur`
--

CREATE TABLE `compteur` (
  `ip` varchar(15) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `compteur`
--


-- --------------------------------------------------------

--
-- Structure de la table `connectes`
--

CREATE TABLE `connectes` (
  `ip` varchar(45) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `connectes`
--

-- --------------------------------------------------------

--
-- Structure de la table `xbt_announce_log`
--

CREATE TABLE `xbt_announce_log` (
  `id` int(11) NOT NULL,
  `ipa` int(10) UNSIGNED NOT NULL,
  `port` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `info_hash` binary(20) NOT NULL,
  `peer_id` binary(20) NOT NULL,
  `downloaded` bigint(20) UNSIGNED NOT NULL,
  `left0` bigint(20) UNSIGNED NOT NULL,
  `uploaded` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `mtime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `xbt_announce_log`
--

-- --------------------------------------------------------

--
-- Structure de la table `xbt_config`
--

CREATE TABLE `xbt_config` (
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `value` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `xbt_config`
--

INSERT INTO `xbt_config` (`name`, `value`) VALUES
('redirect_url', 'xxxxxxxxxxxxxxxxxxxxxxx'),
('query_log', '1'),
('pid_file', '/var/run/xbt_tracker_xxxxxxxxxxx.pid'),
('offline_message', ''),
('column_users_uid', 'uid'),
('column_files_seeders', 'seeders'),
('column_files_leechers', 'leechers'),
('column_files_fid', 'fid'),
('column_files_completed', 'completed'),
('write_db_interval', '15'),
('scrape_interval', '0'),
('read_db_interval', '60'),
('read_config_interval', '60'),
('clean_up_interval', '60'),
('log_scrape', '0'),
('log_announce', '1'),
('log_access', '0'),
('gzip_scrape', '1'),
('full_scrape', '1'),
('debug', '1'),
('daemon', '1'),
('anonymous_scrape', '0'),
('announce_interval', '200'),
('torrent_pass_private_key', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
('table_announce_log', 'xbt_announce_log'),
('table_files', 'xbt_files'),
('table_files_users', 'xbt_files_users'),
('table_scrape_log', 'xbt_scrape_log'),
('table_users', 'xbt_users'),
('listen_ipa', '*'),
('listen_port', '55555'),
('anonymous_announce', '0'),
('auto_register', '0');

-- --------------------------------------------------------

--
-- Structure de la table `xbt_deny_from_hosts`
--

CREATE TABLE `xbt_deny_from_hosts` (
  `begin` int(10) UNSIGNED NOT NULL,
  `end` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `xbt_files`
--

CREATE TABLE `xbt_files` (
  `fid` int(11) NOT NULL,
  `info_hash` binary(20) NOT NULL,
  `leechers` int(11) NOT NULL DEFAULT '0',
  `seeders` int(11) NOT NULL DEFAULT '0',
  `completed` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL,
  `ctime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `xbt_files`
--

--
-- Structure de la table `xbt_files_users`
--

CREATE TABLE `xbt_files_users` (
  `fid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `announced` int(11) NOT NULL,
  `completed` int(11) NOT NULL,
  `downloaded` bigint(20) UNSIGNED NOT NULL,
  `left` bigint(20) UNSIGNED NOT NULL,
  `uploaded` bigint(20) UNSIGNED NOT NULL,
  `mtime` int(11) NOT NULL,
  `down_rate` int(10) UNSIGNED NOT NULL,
  `up_rate` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `xbt_files_users`
--

--
-- Structure de la table `xbt_scrape_log`
--

CREATE TABLE `xbt_scrape_log` (
  `id` int(11) NOT NULL,
  `ipa` int(10) UNSIGNED NOT NULL,
  `info_hash` binary(20) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `mtime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `xbt_users`
--

CREATE TABLE `xbt_users` (
  `uid` int(11) NOT NULL,
  `torrent_pass_version` int(11) NOT NULL DEFAULT '0',
  `downloaded` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `uploaded` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `torrent_pass` char(32) CHARACTER SET latin1 NOT NULL,
  `torrent_pass_secret` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `xbt_users`
--

--
-- Index pour les tables exportées
--

--
-- Index pour la table `blog_cats`
--
ALTER TABLE `blog_cats`
  ADD PRIMARY KEY (`catID`);

--
-- Index pour la table `blog_licences`
--
ALTER TABLE `blog_licences`
  ADD PRIMARY KEY (`licenceID`);

--
-- Index pour la table `blog_logs`
--
ALTER TABLE `blog_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Index pour la table `blog_members`
--
ALTER TABLE `blog_members`
  ADD PRIMARY KEY (`memberID`);

--
-- Index pour la table `blog_messages`
--
ALTER TABLE `blog_messages`
  ADD PRIMARY KEY (`messages_id`);

--
-- Index pour la table `blog_posts_comments`
--
ALTER TABLE `blog_posts_comments`
  ADD PRIMARY KEY (`cid`);

--
-- Index pour la table `blog_posts_seo`
--
ALTER TABLE `blog_posts_seo`
  ADD PRIMARY KEY (`postID`);

--
-- Index pour la table `blog_post_cats`
--
ALTER TABLE `blog_post_cats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blog_post_licences`
--
ALTER TABLE `blog_post_licences`
  ADD PRIMARY KEY (`id_BPL`);

--
-- Index pour la table `compteur`
--
ALTER TABLE `compteur`
  ADD KEY `ip` (`ip`);

--
-- Index pour la table `connectes`
--
ALTER TABLE `connectes`
  ADD PRIMARY KEY (`ip`);

--
-- Index pour la table `xbt_announce_log`
--
ALTER TABLE `xbt_announce_log`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `xbt_config`
--
ALTER TABLE `xbt_config`
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `xbt_files`
--
ALTER TABLE `xbt_files`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `info_hash` (`info_hash`);

--
-- Index pour la table `xbt_files_users`
--
ALTER TABLE `xbt_files_users`
  ADD UNIQUE KEY `fid` (`fid`,`uid`),
  ADD KEY `uid` (`uid`);

--
-- Index pour la table `xbt_scrape_log`
--
ALTER TABLE `xbt_scrape_log`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `xbt_users`
--
ALTER TABLE `xbt_users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `blog_cats`
--
ALTER TABLE `blog_cats`
  MODIFY `catID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `blog_licences`
--
ALTER TABLE `blog_licences`
  MODIFY `licenceID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `blog_logs`
--
ALTER TABLE `blog_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38488;
--
-- AUTO_INCREMENT pour la table `blog_members`
--
ALTER TABLE `blog_members`
  MODIFY `memberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;
--
-- AUTO_INCREMENT pour la table `blog_messages`
--
ALTER TABLE `blog_messages`
  MODIFY `messages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=699;
--
-- AUTO_INCREMENT pour la table `blog_posts_comments`
--
ALTER TABLE `blog_posts_comments`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `blog_posts_seo`
--
ALTER TABLE `blog_posts_seo`
  MODIFY `postID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT pour la table `blog_post_cats`
--
ALTER TABLE `blog_post_cats`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=650;
--
-- AUTO_INCREMENT pour la table `blog_post_licences`
--
ALTER TABLE `blog_post_licences`
  MODIFY `id_BPL` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=813;
--
-- AUTO_INCREMENT pour la table `xbt_announce_log`
--
ALTER TABLE `xbt_announce_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205141;
--
-- AUTO_INCREMENT pour la table `xbt_files`
--
ALTER TABLE `xbt_files`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT pour la table `xbt_scrape_log`
--
ALTER TABLE `xbt_scrape_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `xbt_users`
--
ALTER TABLE `xbt_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `xbt_files_users`
--
ALTER TABLE `xbt_files_users`
  ADD CONSTRAINT `xbt_files_users_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `xbt_files` (`fid`) ON DELETE CASCADE,
  ADD CONSTRAINT `xbt_files_users_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `xbt_files` (`fid`) ON DELETE CASCADE,
  ADD CONSTRAINT `xbt_files_users_ibfk_3` FOREIGN KEY (`fid`) REFERENCES `xbt_files` (`fid`) ON DELETE CASCADE,
  ADD CONSTRAINT `xbt_files_users_ibfk_4` FOREIGN KEY (`uid`) REFERENCES `xbt_users` (`uid`) ON DELETE CASCADE,
  ADD CONSTRAINT `xbt_files_users_ibfk_5` FOREIGN KEY (`uid`) REFERENCES `xbt_users` (`uid`) ON DELETE CASCADE,
  ADD CONSTRAINT `xbt_files_users_ibfk_6` FOREIGN KEY (`uid`) REFERENCES `xbt_users` (`uid`) ON DELETE CASCADE,
  ADD CONSTRAINT `xbt_files_users_ibfk_7` FOREIGN KEY (`uid`) REFERENCES `xbt_users` (`uid`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
