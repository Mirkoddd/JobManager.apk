.class public Lcom/sec/android/app/controlpanel/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFsWritable()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/TMP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 226
    :cond_2d
    :goto_2d
    return v2

    .line 221
    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 222
    const/4 v2, 0x1

    goto :goto_2d
.end method

.method public static getBootTime()J
    .registers 11

    .prologue
    .line 107
    const-string v9, "^btime\\s+(\\d+)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 108
    .local v4, btimePattern:Ljava/util/regex/Pattern;
    const-wide/16 v0, -0x1

    .line 109
    .local v0, bootTime:J
    const/4 v2, 0x0

    .line 112
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_9
    new-instance v6, Ljava/io/File;

    const-string v9, "/proc/stat"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 114
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v10, 0x2000

    invoke-direct {v3, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_22} :catch_56
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_22} :catch_62
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_6e

    .line 116
    .end local v2           #br:Ljava/io/BufferedReader;
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_22
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, text:Ljava/lang/String;
    if-eqz v8, :cond_92

    .line 117
    invoke-virtual {v4, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 118
    .local v7, m:Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_43

    .line 119
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_86
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_3a} :catch_8f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_3a} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3a} :catch_89

    move-result-wide v0

    move-object v2, v3

    .line 137
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v7           #m:Ljava/util/regex/Matcher;
    .end local v8           #text:Ljava/lang/String;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :cond_3c
    :goto_3c
    if-eqz v2, :cond_41

    .line 138
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_51

    .end local v6           #file:Ljava/io/File;
    :cond_41
    :goto_41
    move-wide v9, v0

    .line 143
    :goto_42
    return-wide v9

    .line 122
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #m:Ljava/util/regex/Matcher;
    .restart local v8       #text:Ljava/lang/String;
    :cond_43
    const-wide/16 v9, -0x1

    .line 137
    if-eqz v3, :cond_4a

    .line 138
    :try_start_47
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4c

    :cond_4a
    :goto_4a
    move-object v2, v3

    .line 141
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_42

    .line 139
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_4c
    move-exception v5

    .line 140
    .local v5, e1:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    .line 139
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #e1:Ljava/io/IOException;
    .end local v7           #m:Ljava/util/regex/Matcher;
    .end local v8           #text:Ljava/lang/String;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catch_51
    move-exception v5

    .line 140
    .restart local v5       #e1:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 126
    .end local v5           #e1:Ljava/io/IOException;
    .end local v6           #file:Ljava/io/File;
    :catch_56
    move-exception v9

    .line 137
    :goto_57
    if-eqz v2, :cond_41

    .line 138
    :try_start_59
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_41

    .line 139
    :catch_5d
    move-exception v5

    .line 140
    .restart local v5       #e1:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 129
    .end local v5           #e1:Ljava/io/IOException;
    :catch_62
    move-exception v9

    .line 137
    :goto_63
    if-eqz v2, :cond_41

    .line 138
    :try_start_65
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_41

    .line 139
    :catch_69
    move-exception v5

    .line 140
    .restart local v5       #e1:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 132
    .end local v5           #e1:Ljava/io/IOException;
    :catch_6e
    move-exception v9

    .line 137
    :goto_6f
    if-eqz v2, :cond_41

    .line 138
    :try_start_71
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_41

    .line 139
    :catch_75
    move-exception v5

    .line 140
    .restart local v5       #e1:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 136
    .end local v5           #e1:Ljava/io/IOException;
    :catchall_7a
    move-exception v9

    .line 137
    :goto_7b
    if-eqz v2, :cond_80

    .line 138
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    .line 141
    :cond_80
    :goto_80
    throw v9

    .line 139
    :catch_81
    move-exception v5

    .line 140
    .restart local v5       #e1:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_80

    .line 136
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v5           #e1:Ljava/io/IOException;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v6       #file:Ljava/io/File;
    :catchall_86
    move-exception v9

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_7b

    .line 132
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_89
    move-exception v9

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_6f

    .line 129
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_8c
    move-exception v9

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_63

    .line 126
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_8f
    move-exception v9

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_57

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v8       #text:Ljava/lang/String;
    :cond_92
    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_3c
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 31
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getProcessStartTime(I)J
    .registers 10
    .parameter "pid"

    .prologue
    .line 154
    const-string v7, "(-?\\d+)\\s(\\S+)\\s([A-Z])\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 156
    .local v3, processStatPattern:Ljava/util/regex/Pattern;
    const-wide/16 v4, -0x1

    .line 158
    .local v4, startTime:J
    :try_start_8
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/stat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 160
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v8, 0x2000

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 162
    .local v0, br:Ljava/io/BufferedReader;
    :goto_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, text:Ljava/lang/String;
    if-eqz v6, :cond_59

    .line 163
    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 164
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 165
    const/16 v7, 0x16

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_38

    .line 167
    :cond_53
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 168
    const-wide/16 v7, -0x1

    .line 180
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v6           #text:Ljava/lang/String;
    :goto_58
    return-wide v7

    .line 171
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/File;
    .restart local v6       #text:Ljava/lang/String;
    :cond_59
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_5c} :catch_60
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_5c} :catch_5e

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #file:Ljava/io/File;
    .end local v6           #text:Ljava/lang/String;
    :cond_5c
    :goto_5c
    move-wide v7, v4

    .line 180
    goto :goto_58

    .line 176
    :catch_5e
    move-exception v7

    goto :goto_5c

    .line 173
    :catch_60
    move-exception v7

    goto :goto_5c
.end method

.method public static getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 43
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasStorage(Z)Z
    .registers 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v1, 0x1

    .line 190
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 192
    if-eqz p0, :cond_13

    .line 193
    invoke-static {}, Lcom/sec/android/app/controlpanel/Utils;->checkFsWritable()Z

    move-result v1

    .line 201
    :cond_13
    :goto_13
    return v1

    .line 198
    :cond_14
    if-nez p0, :cond_1e

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 201
    :cond_1e
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static isLocaleChange(Landroid/content/Context;)Z
    .registers 12
    .parameter "context"

    .prologue
    const/4 v10, -0x1

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 72
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, locale:Ljava/lang/String;
    const-string v8, "locale"

    const-string v9, ""

    invoke-static {p0, v8, v9}, Lcom/sec/android/app/controlpanel/Utils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, previousLocale:Ljava/lang/String;
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 75
    .local v3, mcc:I
    const-string v8, "mcc"

    invoke-static {p0, v8, v10}, Lcom/sec/android/app/controlpanel/Utils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 76
    .local v6, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 77
    .local v4, mnc:I
    const-string v8, "mnc"

    invoke-static {p0, v8, v10}, Lcom/sec/android/app/controlpanel/Utils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 80
    .local v7, previousMnc:I
    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 81
    const/4 v2, 0x1

    .line 86
    .local v2, mLocaleChanged:Z
    :goto_30
    return v2

    .line 83
    .end local v2           #mLocaleChanged:Z
    :cond_31
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    if-ne v3, v6, :cond_3b

    if-eq v4, v7, :cond_3d

    :cond_3b
    const/4 v2, 0x1

    .restart local v2       #mLocaleChanged:Z
    :goto_3c
    goto :goto_30

    .end local v2           #mLocaleChanged:Z
    :cond_3d
    const/4 v2, 0x0

    goto :goto_3c
.end method

.method public static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 36
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 37
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

.method public static setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 48
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 49
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method

.method public static writeLocaleConfig(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 91
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, locale:Ljava/lang/String;
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 93
    .local v3, mcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 94
    .local v4, mnc:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 95
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 96
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v6, "locale"

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v6, "mcc"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v6, "mnc"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void
.end method
