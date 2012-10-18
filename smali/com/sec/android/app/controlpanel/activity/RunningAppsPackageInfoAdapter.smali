.class public Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningAppsPackageInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;
    }
.end annotation


# instance fields
.field private buttonPressed:Z

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->buttonPressed:Z

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    return-void
.end method

.method private getDetailString(Lcom/sec/android/app/controlpanel/PackageInfoItem;)Ljava/lang/String;
    .registers 9
    .parameter "p"

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuRateFormatted()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, cpu:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsageString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, mem:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v3

    .line 132
    .local v3, memValue:J
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_35

    .line 133
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f05000f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_35
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_48

    .line 137
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_48
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f050010

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public changeButtonTextColor(Landroid/widget/Button;I)V
    .registers 7
    .parameter "btn"
    .parameter "position"

    .prologue
    const v3, 0x2050001

    .line 232
    iget-boolean v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->buttonPressed:Z

    if-eqz v1, :cond_c

    .line 233
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 249
    :cond_b
    :goto_b
    return-void

    .line 235
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_b

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 241
    .local v0, mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v1

    const/high16 v2, 0x4120

    cmpl-float v1, v1, v2

    if-lez v1, :cond_36

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x205

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_b

    .line 243
    :cond_36
    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v1

    const/high16 v2, 0x40a0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4e

    .line 244
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_b

    .line 246
    :cond_4e
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_b
.end method

.method public getBaseAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 70
    const/4 v0, 0x0

    .line 71
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 6
    .parameter "position"

    .prologue
    .line 75
    const/4 v2, 0x0

    .line 77
    .local v2, mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-object v2, v0
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_b} :catch_c

    .line 81
    :goto_b
    return-object v2

    .line 78
    :catch_c
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_b
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPackageIndex(Ljava/lang/String;)I
    .registers 7
    .parameter "pkgName"

    .prologue
    .line 85
    const/4 v3, 0x0

    .line 87
    .local v3, mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz p1, :cond_23

    .line 88
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getCount()I

    move-result v2

    .line 89
    .local v2, itemSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_23

    .line 90
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-object v3, v0

    .line 91
    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_22

    move-result v4

    if-eqz v4, :cond_1f

    .line 99
    .end local v1           #i:I
    .end local v2           #itemSize:I
    :goto_1e
    return v1

    .line 89
    .restart local v1       #i:I
    .restart local v2       #itemSize:I
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 96
    .end local v1           #i:I
    .end local v2           #itemSize:I
    :catch_22
    move-exception v4

    .line 99
    :cond_23
    const/4 v1, -0x1

    goto :goto_1e
.end method

.method public getSortOrder()I
    .registers 4

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "runningAppList_sort_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/controlpanel/Utils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    const v8, 0x7f02001b

    const v7, 0x2050001

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_12

    .line 220
    :goto_11
    return-object v2

    .line 152
    :cond_12
    if-nez p2, :cond_139

    .line 153
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030001

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 154
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;-><init>()V

    .line 155
    .local v0, holder:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;
    const v2, 0x7f070009

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    .line 156
    const v2, 0x7f07000b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 157
    const v2, 0x7f07000a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 158
    const v2, 0x7f07000c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    .line 159
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetailColor:Landroid/content/res/ColorStateList;

    .line 160
    const v2, 0x7f07000d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    .line 161
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->taskDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->serviceDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    :goto_82
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 169
    .local v1, pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v1, :cond_136

    .line 170
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v2

    if-eqz v2, :cond_141

    .line 171
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    :goto_97
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v2

    const/high16 v3, 0x4120

    cmpl-float v2, v2, v3

    if-lez v2, :cond_148

    .line 176
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const v3, 0x7f02001d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 178
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x205

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 191
    :goto_c1
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 192
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_18c

    .line 195
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 201
    :goto_f0
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 202
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getDetailString(Lcom/sec/android/app/controlpanel/PackageInfoItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 204
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 205
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 206
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_19c

    .line 212
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_136
    :goto_136
    move-object v2, p2

    .line 220
    goto/16 :goto_11

    .line 166
    .end local v0           #holder:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;
    .end local v1           #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_139
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;

    .restart local v0       #holder:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;
    goto/16 :goto_82

    .line 173
    .restart local v1       #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_141
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_97

    .line 180
    :cond_148
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v2

    const/high16 v3, 0x40a0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_16f

    .line 181
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 183
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_c1

    .line 186
    :cond_16f
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetailColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 187
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 188
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_c1

    .line 198
    :cond_18c
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_f0

    .line 215
    :cond_19c
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x205001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_136
.end method

.method public isButtonPressed()Z
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->buttonPressed:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->isButtonPressed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 254
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 256
    :cond_9
    return-void
.end method

.method public removeItem(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public setButtonPressed(Z)V
    .registers 2
    .parameter "buttonPressed"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->buttonPressed:Z

    .line 229
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    .line 117
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "clickListener"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 121
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter "touchListener"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 125
    return-void
.end method

.method public setSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 277
    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_b

    .line 278
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 279
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "runningAppList_sort_order"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/controlpanel/Utils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 280
    return-void
.end method

.method public sort()V
    .registers 4

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getSortOrder()I

    move-result v0

    .line 261
    .local v0, sortOrder:I
    if-nez v0, :cond_11

    .line 262
    :try_start_6
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/comparator/ProcessStartTimeComparator;

    invoke-direct {v2}, Lcom/sec/android/app/controlpanel/activity/comparator/ProcessStartTimeComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    :cond_10
    :goto_10
    return-void

    .line 263
    :cond_11
    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/comparator/CpuUsageComparator;

    invoke-direct {v2}, Lcom/sec/android/app/controlpanel/activity/comparator/CpuUsageComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_10

    .line 270
    :catch_1f
    move-exception v1

    goto :goto_10

    .line 265
    :cond_21
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/comparator/MemoryUsageComparator;

    invoke-direct {v2}, Lcom/sec/android/app/controlpanel/activity/comparator/MemoryUsageComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_10

    .line 267
    :cond_2f
    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/comparator/AlphaComparator;

    invoke-direct {v2}, Lcom/sec/android/app/controlpanel/activity/comparator/AlphaComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3c} :catch_1f

    goto :goto_10
.end method
