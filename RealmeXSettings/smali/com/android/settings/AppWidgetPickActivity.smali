.class public Lcom/android/settings/AppWidgetPickActivity;
.super Lcom/android/settings/ActivityPicker;
.source "AppWidgetPickActivity.java"

# interfaces
.implements Lcom/android/settings/b$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/ActivityPicker;",
        "Lcom/android/settings/b$a<",
        "Lcom/android/settings/ActivityPicker$c$a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/ActivityPicker$c$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/android/settings/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/b<",
            "Lcom/android/settings/ActivityPicker$c$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/appwidget/AppWidgetManager;

.field private e:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/ActivityPicker;-><init>()V

    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 185
    :goto_0
    iget v0, p0, Lcom/android/settings/AppWidgetPickActivity;->b:I

    const-string v1, "appWidgetId"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/settings/ActivityPicker$c$a;
    .locals 8

    const-string v0, " for provider: "

    const-string v1, "Can\'t load icon drawable 0x"

    const-string v2, "AppWidgetPickActivity"

    .line 97
    iget-object v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 100
    iget v4, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 103
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v4, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 121
    iget-object v6, p0, Lcom/android/settings/AppWidgetPickActivity;->e:Landroid/content/pm/PackageManager;

    iget-object v7, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 122
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 123
    iget v7, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v6, v7, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    goto :goto_0

    .line 125
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v5, :cond_0

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    new-instance v0, Lcom/android/settings/ActivityPicker$c$a;

    invoke-direct {v0, p1, v3, v5}, Lcom/android/settings/ActivityPicker$c$a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object p1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/ActivityPicker$c$a;->d:Ljava/lang/String;

    .line 136
    iget-object p1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/ActivityPicker$c$a;->e:Ljava/lang/String;

    .line 137
    iput-object p3, v0, Lcom/android/settings/ActivityPicker$c$a;->f:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/AppWidgetPickActivity;->b(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/settings/ActivityPicker$c$a;

    move-result-object p1

    return-object p1
.end method

.method protected final a()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/ActivityPicker$c$a;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v6, p0, Lcom/android/settings/AppWidgetPickActivity;->c:Lcom/android/settings/b;

    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const/4 v0, 0x1

    const-string v1, "customSort"

    .line 1146
    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1148
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "categoryFilter"

    .line 1151
    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1179
    iget-object v0, v6, Lcom/android/settings/b;->a:Landroid/appwidget/AppWidgetManager;

    .line 1180
    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, v9

    .line 1181
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/b;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    if-eqz v8, :cond_0

    .line 1158
    invoke-virtual {v6, v9, v7}, Lcom/android/settings/b;->a(Ljava/util/List;Landroid/content/Intent;)V

    .line 1160
    :cond_0
    new-instance v0, Lcom/android/settings/b$1;

    invoke-direct {v0, v6}, Lcom/android/settings/b$1;-><init>(Lcom/android/settings/b;)V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-nez v8, :cond_1

    .line 1168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    invoke-virtual {v6, v0, v7}, Lcom/android/settings/b;->a(Ljava/util/List;Landroid/content/Intent;)V

    .line 1170
    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    :cond_1
    iput-object v9, p0, Lcom/android/settings/AppWidgetPickActivity;->a:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 146
    invoke-virtual {p0, p2}, Lcom/android/settings/AppWidgetPickActivity;->a(I)Landroid/content/Intent;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/ActivityPicker$c$a;

    .line 150
    iget-object p2, p2, Lcom/android/settings/ActivityPicker$c$a;->f:Landroid/os/Bundle;

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 153
    invoke-direct {p0, v0, p1}, Lcom/android/settings/AppWidgetPickActivity;->a(ILandroid/content/Intent;)V

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "appWidgetOptions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 161
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AppWidgetPickActivity;->d:Landroid/appwidget/AppWidgetManager;

    iget v3, p0, Lcom/android/settings/AppWidgetPickActivity;->b:I

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    .line 171
    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/android/settings/AppWidgetPickActivity;->a(ILandroid/content/Intent;)V

    .line 174
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->e:Landroid/content/pm/PackageManager;

    .line 65
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->d:Landroid/appwidget/AppWidgetManager;

    .line 66
    new-instance v0, Lcom/android/settings/b;

    iget-object v1, p0, Lcom/android/settings/AppWidgetPickActivity;->d:Landroid/appwidget/AppWidgetManager;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/settings/b;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/settings/b$a;)V

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->c:Lcom/android/settings/b;

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/ActivityPicker;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/android/settings/AppWidgetPickActivity;->a(ILandroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/AppWidgetPickActivity;->b:I

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    return-void
.end method
