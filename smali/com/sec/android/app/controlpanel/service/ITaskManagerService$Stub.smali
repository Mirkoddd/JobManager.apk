.class public abstract Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;
.super Landroid/os/Binder;
.source "ITaskManagerService.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/service/ITaskManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/service/ITaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_8a

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 42
    :sswitch_a
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->getRunningApplicationCount()I

    move-result v0

    .line 49
    .local v0, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 55
    .end local v0           #_result:I
    :sswitch_20
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->updateRunningApplicationListInfo()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 62
    :sswitch_2c
    const-string v3, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->isUpdateRunningApplicationListOnProgress()Z

    move-result v0

    .line 64
    .local v0, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v0, :cond_3b

    move v1, v2

    :cond_3b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 70
    .end local v0           #_result:Z
    :sswitch_3f
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->initCPUUsage()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 77
    :sswitch_4b
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->updateCPUUsage()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 84
    :sswitch_57
    const-string v3, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->isCPUWarning()Z

    move-result v0

    .line 86
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v0, :cond_66

    move v1, v2

    :cond_66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 92
    .end local v0           #_result:Z
    :sswitch_6a
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->getCPUWarningLevel()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 100
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_7a
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->getCPUWarningMessage()Ljava/lang/String;

    move-result-object v0

    .line 102
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 38
    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_3f
        0x5 -> :sswitch_4b
        0x6 -> :sswitch_57
        0x7 -> :sswitch_6a
        0x8 -> :sswitch_7a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
