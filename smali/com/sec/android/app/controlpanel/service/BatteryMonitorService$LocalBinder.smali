.class public Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$LocalBinder;
.super Landroid/os/Binder;
.source "BatteryMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$LocalBinder;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
