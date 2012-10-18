.class Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;
.super Ljava/lang/Object;
.source "RunningAppsPackageInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppViewHolder"
.end annotation


# instance fields
.field appDetail:Landroid/widget/TextView;

.field appDetailColor:Landroid/content/res/ColorStateList;

.field appIcon:Landroid/widget/ImageView;

.field appName:Landroid/widget/TextView;

.field button:Landroid/widget/Button;

.field itemLayout:Landroid/widget/LinearLayout;

.field serviceDrawable:Landroid/graphics/drawable/Drawable;

.field taskDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 287
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
