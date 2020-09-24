.class final Lcom/android/settings/applications/RecentAppsPreferenceController$1;
.super Lcom/android/settings/applications/t;
.source "RecentAppsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/RecentAppsPreferenceController;->onReloadDataCompleted(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/RecentAppsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->a:Lcom/android/settings/applications/RecentAppsPreferenceController;

    const/4 p1, -0x1

    invoke-direct {p0, p2, p1, p3}, Lcom/android/settings/applications/t;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 8

    const-string v0, "AppEntitiesHeaderCtl"

    .line 116
    iget-object v1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->a:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iget-object v1, v1, Lcom/android/settings/applications/RecentAppsPreferenceController;->mAppEntitiesController:Lcom/android/settingslib/widget/c;

    iget-object v2, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->a:Lcom/android/settings/applications/RecentAppsPreferenceController;

    .line 117
    invoke-static {v2}, Lcom/android/settings/applications/RecentAppsPreferenceController;->access$000(Lcom/android/settings/applications/RecentAppsPreferenceController;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const p1, 0x7f1213fb

    invoke-virtual {v2, p1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1155
    iput-object p1, v1, Lcom/android/settingslib/widget/c;->k:Ljava/lang/CharSequence;

    .line 118
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->a:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/applications/RecentAppsPreferenceController;->mAppEntitiesController:Lcom/android/settingslib/widget/c;

    .line 1234
    :try_start_0
    iget-object v1, p1, Lcom/android/settingslib/widget/c;->a:Landroid/content/Context;

    iget v2, p1, Lcom/android/settingslib/widget/c;->i:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Resource of header title can\'t not be found!"

    .line 1236
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""

    .line 1238
    :goto_0
    iget-object v2, p1, Lcom/android/settingslib/widget/c;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    iget-object v2, p1, Lcom/android/settingslib/widget/c;->b:Landroid/widget/TextView;

    .line 1240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v4, 0x8

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    move v1, v5

    .line 1239
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1289
    iget-object v1, p1, Lcom/android/settingslib/widget/c;->d:[Lcom/android/settingslib/widget/d;

    array-length v2, v1

    move v6, v5

    :goto_2
    if-ge v6, v2, :cond_2

    aget-object v7, v1, v6

    if-eqz v7, :cond_1

    move v1, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_3
    if-eqz v1, :cond_3

    .line 1219
    invoke-virtual {p1, v3}, Lcom/android/settingslib/widget/c;->a(Z)V

    return-void

    .line 1222
    :cond_3
    invoke-virtual {p1, v5}, Lcom/android/settingslib/widget/c;->a(Z)V

    .line 2244
    iget-object v1, p1, Lcom/android/settingslib/widget/c;->k:Ljava/lang/CharSequence;

    .line 2245
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2247
    :try_start_1
    iget-object v2, p1, Lcom/android/settingslib/widget/c;->a:Landroid/content/Context;

    iget v3, p1, Lcom/android/settingslib/widget/c;->j:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    const-string v3, "Resource of header details can\'t not be found!"

    .line 2249
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2252
    :cond_4
    :goto_4
    iget-object v0, p1, Lcom/android/settingslib/widget/c;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2253
    iget-object v0, p1, Lcom/android/settingslib/widget/c;->c:Landroid/widget/Button;

    .line 2254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_5

    :cond_5
    move v1, v5

    .line 2253
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2255
    iget-object v0, p1, Lcom/android/settingslib/widget/c;->c:Landroid/widget/Button;

    iget-object v1, p1, Lcom/android/settingslib/widget/c;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v5

    :goto_6
    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    .line 2259
    iget-object v1, p1, Lcom/android/settingslib/widget/c;->d:[Lcom/android/settingslib/widget/d;

    aget-object v1, v1, v0

    .line 2260
    iget-object v2, p1, Lcom/android/settingslib/widget/c;->e:[Landroid/view/View;

    aget-object v2, v2, v0

    if-eqz v1, :cond_6

    move v3, v5

    goto :goto_7

    :cond_6
    move v3, v4

    :goto_7
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_9

    .line 2263
    iget-object v2, p1, Lcom/android/settingslib/widget/c;->e:[Landroid/view/View;

    aget-object v2, v2, v0

    .line 3068
    iget-object v3, v1, Lcom/android/settingslib/widget/d;->d:Landroid/view/View$OnClickListener;

    .line 2263
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2265
    iget-object v2, p1, Lcom/android/settingslib/widget/c;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    .line 4041
    iget-object v3, v1, Lcom/android/settingslib/widget/d;->a:Landroid/graphics/drawable/Drawable;

    .line 2265
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4050
    iget-object v2, v1, Lcom/android/settingslib/widget/d;->b:Ljava/lang/CharSequence;

    .line 2268
    iget-object v3, p1, Lcom/android/settingslib/widget/c;->g:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    .line 2269
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_7

    move v6, v7

    goto :goto_8

    :cond_7
    move v6, v5

    .line 2268
    :goto_8
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2270
    iget-object v3, p1, Lcom/android/settingslib/widget/c;->g:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4059
    iget-object v1, v1, Lcom/android/settingslib/widget/d;->c:Ljava/lang/CharSequence;

    .line 2273
    iget-object v2, p1, Lcom/android/settingslib/widget/c;->h:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    .line 2274
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_9

    :cond_8
    move v7, v5

    .line 2273
    :goto_9
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2275
    iget-object v2, p1, Lcom/android/settingslib/widget/c;->h:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    return-void
.end method
