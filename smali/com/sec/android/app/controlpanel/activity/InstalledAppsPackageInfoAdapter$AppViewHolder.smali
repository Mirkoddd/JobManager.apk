.class Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
.super Ljava/lang/Object;
.source "InstalledAppsPackageInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppViewHolder"
.end annotation


# instance fields
.field appDetail:Landroid/widget/TextView;

.field appIcon:Landroid/widget/ImageView;

.field appName:Landroid/widget/TextView;

.field button:Landroid/widget/Button;

.field installLocation:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 301
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
