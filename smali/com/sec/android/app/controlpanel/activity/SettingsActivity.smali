.class public Lcom/sec/android/app/controlpanel/activity/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .registers 9

    .prologue
    const v7, 0x7f05005b

    const v6, 0x7f040002

    const/4 v5, 0x0

    const v4, 0x7f040003

    .line 30
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 58
    .local v2, root:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const v3, 0x7f05005d

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 60
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 63
    new-instance v1, Landroid/preference/ListPreference;

    invoke-direct {v1, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, listPref:Landroid/preference/ListPreference;
    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 65
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 66
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 68
    const-string v3, "runnning_app_list_touch_action"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 69
    const-string v3, "Default Click Action \ub54c\uc758 \ub3d9\uc791"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    const-string v3, "\ub9ac\uc2a4\ud2b8 \ud56d\ubaa9\uc744 \ud074\ub9ad \ud560\ub54c \uc218\ud589\ud558\ub294 \uae30\ub2a5\uc744 \ubcc0\uacbd\ud569\ub2c8\ub2e4."

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 74
    new-instance v1, Landroid/preference/ListPreference;

    .end local v1           #listPref:Landroid/preference/ListPreference;
    invoke-direct {v1, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 75
    .restart local v1       #listPref:Landroid/preference/ListPreference;
    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 76
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 77
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 79
    const-string v3, "runnning_app_list_long_touch_action"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 80
    const-string v3, "\uae38\uac8c \ud130\uce58\ud560 \ub54c\uc758 \ub3d9\uc791"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    const-string v3, "\ub9ac\uc2a4\ud2b8 \ud56d\ubaa9\uc744 \uae38\uac8c \ub204\ub97c\ub54c \uc218\ud589\ud558\ub294 \uae30\ub2a5\uc744 \ubcc0\uacbd\ud569\ub2c8\ub2e4."

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 84
    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/SettingsActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/SettingsActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 21
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
