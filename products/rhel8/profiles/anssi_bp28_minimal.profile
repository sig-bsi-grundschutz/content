---
documentation_complete: true

metadata:
    SMEs:
        - marcusburghardt
        - yuumasato

title: 'ANSSI-BP-028 (minimal)'

description: |-
    This profile contains configurations that align to ANSSI-BP-028 v2.0 at the minimal hardening level.

    ANSSI is the French National Information Security Agency, and stands for Agence nationale de la sécurité des systèmes d'information.
    ANSSI-BP-028 is a configuration recommendation for GNU/Linux systems.

    A copy of the ANSSI-BP-028 can be found at the ANSSI website:
    https://www.ssi.gouv.fr/administration/guide/recommandations-de-securite-relatives-a-un-systeme-gnulinux/

    An English version of the ANSSI-BP-028 can also be found at the ANSSI website:
    https://cyber.gouv.fr/publications/configuration-recommendations-gnulinux-system

selections:
    - anssi:all:minimal
    - var_password_hashing_algorithm=SHA512
    - var_password_pam_unix_rounds=65536
    # Following rules once had a prodtype incompatible with the rhel8 product
    - '!cracklib_accounts_password_pam_minlen'
    - '!accounts_passwords_pam_tally2_deny_root'
    - '!accounts_passwords_pam_tally2'
    - '!cracklib_accounts_password_pam_ucredit'
    - '!cracklib_accounts_password_pam_dcredit'
    - '!cracklib_accounts_password_pam_lcredit'
    - '!cracklib_accounts_password_pam_ocredit'
    - '!accounts_passwords_pam_tally2_unlock_time'
    - '!ensure_oracle_gpgkey_installed'
    - '!ensure_almalinux_gpgkey_installed'
    - '!package_kea_removed'
    - '!package_rsh-server_removed'
    - '!package_rsh_removed'

    # Following rules are not applicable to RHEL
    - '!package_talk_removed'
    - '!package_talk-server_removed'
