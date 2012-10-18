.class public Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;
.super Landroid/app/Service;
.source "BatteryMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;,
        Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$LocalBinder;
    }
.end annotation


# static fields
.field private static seq:I


# instance fields
.field private fosBatt:Ljava/io/FileOutputStream;

.field private fosCpu:Ljava/io/FileOutputStream;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBatteryInfo:Lcom/sec/android/app/controlpanel/BatteryInfo;

.field private final mBinder:Landroid/os/IBinder;

.field private mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

.field private mHandler:Landroid/os/Handler;

.field private mLoggingTime:Ljava/lang/String;

.field private mNM:Landroid/app/NotificationManager;

.field private mObserver:Lcom/sec/android/app/controlpanel/Observer;

.field private mPowerManager:Landroid/os/PowerManager;

.field final mQueueLock:Ljava/lang/Object;

.field mRunMonitoringIntent:Landroid/app/PendingIntent;

.field mRunMonitoringReceiver:Landroid/content/BroadcastReceiver;

.field mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 289
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->seq:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mQueueLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$1;-><init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    .line 165
    new-instance v0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$LocalBinder;-><init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mBinder:Landroid/os/IBinder;

    .line 334
    new-instance v0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$2;-><init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mHandler:Landroid/os/Handler;

    .line 357
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->doMonitoring()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private closeFile()V
    .registers 3

    .prologue
    .line 270
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->fosBatt:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_9

    .line 272
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->fosBatt:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_13

    .line 279
    :cond_9
    :goto_9
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->fosCpu:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_12

    .line 281
    :try_start_d
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->fosCpu:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_18

    .line 287
    :cond_12
    :goto_12
    return-void

    .line 273
    :catch_13
    move-exception v0

    .line 275
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 282
    .end local v0           #e:Ljava/io/IOException;
    :catch_18
    move-exception v0

    .line 284
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method private doMonitoring()V
    .registers 8

    .prologue
    .line 292
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 297
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/CpuInfo;->update()V

    .line 302
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 303
    .local v3, now:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Landroid/text/format/Time;->hour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/text/format/Time;->minute:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/text/format/Time;->second:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->seq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mBatteryInfo:Lcom/sec/android/app/controlpanel/BatteryInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/BatteryInfo;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mBatteryInfo:Lcom/sec/android/app/controlpanel/BatteryInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/BatteryInfo;->getVoltage()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    .local v0, batt:Ljava/lang/StringBuilder;
    :try_start_77
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->fosBatt:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_84} :catch_cd

    .line 320
    :goto_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v1, cpu:Ljava/lang/StringBuilder;
    const-string v4, "SEQ:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->seq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->getCurTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/CpuInfo;->getCpuUsagePrint(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :try_start_b9
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->fosCpu:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c6} :catch_d2

    .line 331
    :goto_c6
    sget v4, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->seq:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->seq:I

    .line 332
    return-void

    .line 311
    .end local v1           #cpu:Ljava/lang/StringBuilder;
    :catch_cd
    move-exception v2

    .line 313
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_84

    .line 327
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #cpu:Ljava/lang/StringBuilder;
    :catch_d2
    move-exception v2

    .line 329
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c6
.end method

.method private getCurTime()Ljava/lang/String;
    .registers 9

    .prologue
    .line 197
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 199
    .local v0, cal:Ljava/util/Calendar;
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, month:Ljava/lang/String;
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, day:Ljava/lang/String;
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, hour:Ljava/lang/String;
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, min:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private openFile()V
    .registers 6

    .prologue
    .line 227
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/Batt_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mLoggingTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, fileBatt:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_29

    .line 231
    :try_start_26
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_61

    .line 240
    :cond_29
    :goto_29
    :try_start_29
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->fosBatt:Ljava/io/FileOutputStream;
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_30} :catch_66

    .line 249
    :goto_30
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/Cpu_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mLoggingTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, fileCpu:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_59

    .line 253
    :try_start_56
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_6b

    .line 262
    :cond_59
    :goto_59
    :try_start_59
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->fosCpu:Ljava/io/FileOutputStream;
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_60} :catch_70

    .line 267
    :goto_60
    return-void

    .line 232
    .end local v2           #fileCpu:Ljava/io/File;
    :catch_61
    move-exception v0

    .line 234
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 241
    .end local v0           #e:Ljava/io/IOException;
    :catch_66
    move-exception v0

    .line 243
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_30

    .line 254
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #fileCpu:Ljava/io/File;
    :catch_6b
    move-exception v0

    .line 256
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_59

    .line 263
    .end local v0           #e:Ljava/io/IOException;
    :catch_70
    move-exception v0

    .line 265
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_60
.end method

.method private showNotification()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    const-string v1, " File:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mLoggingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020015

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 183
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 187
    const v3, 0x7f050030

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mNM:Landroid/app/NotificationManager;

    const v2, 0x7f05002f

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 194
    return-void
.end method

.method private startMonitoring()V
    .registers 7

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mRunMonitoringIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 211
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->getCurTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mLoggingTime:Ljava/lang/String;

    .line 212
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 89
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mNM:Landroid/app/NotificationManager;

    .line 90
    invoke-static {p0}, Lcom/sec/android/app/controlpanel/BatteryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/BatteryInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mBatteryInfo:Lcom/sec/android/app/controlpanel/BatteryInfo;

    .line 91
    invoke-static {p0}, Lcom/sec/android/app/controlpanel/CpuInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    .line 93
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mBatteryInfo:Lcom/sec/android/app/controlpanel/BatteryInfo;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/controlpanel/BatteryInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/controlpanel/CpuInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 96
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 97
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mPowerManager:Landroid/os/PowerManager;

    .line 100
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "batt_mon"

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 103
    new-instance v2, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;-><init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$1;)V

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mRunMonitoringReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.app.controlpanel.intent.RUN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mRunMonitoringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.controlpanel.intent.RUN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, backupIntent:Landroid/content/Intent;
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    const/4 v2, 0x0

    invoke-static {p0, v4, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mRunMonitoringIntent:Landroid/app/PendingIntent;

    .line 114
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->startMonitoring()V

    .line 118
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->showNotification()V

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->openFile()V

    .line 121
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 132
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->closeFile()V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mBatteryInfo:Lcom/sec/android/app/controlpanel/BatteryInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/BatteryInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mRunMonitoringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mRunMonitoringIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f05002f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 142
    return-void
.end method
