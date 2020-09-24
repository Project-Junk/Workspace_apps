.class public final Lcom/coloros/settings/feature/homepage/b;
.super Ljava/lang/Object;
.source "HomepagePreLoader.java"


# static fields
.field private static a:Ljava/lang/Boolean; = null

.field private static b:Ljava/lang/Boolean; = null

.field private static c:Ljava/lang/Boolean; = null

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 140
    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 143
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 144
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HomepagePreLoader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/coloros/settings/feature/homepage/b;->a:Ljava/lang/Boolean;

    .line 55
    sput-object v0, Lcom/coloros/settings/feature/homepage/b;->b:Ljava/lang/Boolean;

    .line 56
    sput-object v0, Lcom/coloros/settings/feature/homepage/b;->c:Ljava/lang/Boolean;

    const-string v0, ""

    .line 57
    sput-object v0, Lcom/coloros/settings/feature/homepage/b;->d:Ljava/lang/String;

    .line 58
    sput-object v0, Lcom/coloros/settings/feature/homepage/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static b()V
    .locals 1

    .line 62
    sget-object v0, Lcom/coloros/settings/feature/homepage/-$$Lambda$b$lY9_fEv5hYLPwXt25DCmxLbpFa8;->INSTANCE:Lcom/coloros/settings/feature/homepage/-$$Lambda$b$lY9_fEv5hYLPwXt25DCmxLbpFa8;

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static c()Z
    .locals 2

    .line 70
    sget-object v0, Lcom/coloros/settings/feature/homepage/b;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.heytap.intent.action.CLOUD_MAIN"

    .line 71
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ba;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/homepage/b;->a:Ljava/lang/Boolean;

    .line 74
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/homepage/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 78
    sget-object v0, Lcom/coloros/settings/feature/homepage/b;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->h()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/homepage/b;->d:Ljava/lang/String;

    .line 81
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/homepage/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    .line 108
    sget-object v0, Lcom/coloros/settings/feature/homepage/b;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "com.heytap.pictorial"

    .line 109
    invoke-static {v0}, Lcom/coloros/settings/utils/ba;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/homepage/b;->b:Ljava/lang/Boolean;

    .line 111
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/homepage/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    .line 116
    sget-object v0, Lcom/coloros/settings/feature/homepage/b;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "com.coloros.gamespaceui"

    .line 117
    invoke-static {v0}, Lcom/coloros/settings/utils/ba;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/homepage/b;->c:Ljava/lang/Boolean;

    .line 119
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/homepage/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .line 123
    sget-object v0, Lcom/coloros/settings/feature/homepage/b;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 125
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.coloros.gamespaceui"

    const-string v1, "com.coloros.gamespaceui.activity.GameSpaceSettingActivity"

    .line 126
    invoke-static {v0, v1}, Lcom/coloros/settings/feature/homepage/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "com.coloros.gamespace"

    const-string v1, "com.coloros.gamespace.activity.RecoverGameSpaceUIActivity"

    .line 129
    invoke-static {v0, v1}, Lcom/coloros/settings/feature/homepage/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_1
    sput-object v0, Lcom/coloros/settings/feature/homepage/b;->e:Ljava/lang/String;

    .line 133
    :cond_2
    sget-object v0, Lcom/coloros/settings/feature/homepage/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static h()Ljava/lang/String;
    .locals 6

    const-string v0, "com.android.wallpaper.livepicker"

    .line 86
    invoke-static {}, Lcom/coloros/settings/utils/bh;->w()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v1, "actionbar_title"

    goto :goto_1

    :cond_1
    const-string v1, "lockscreen_and_wallpaper_settings_title"

    :goto_1
    const/4 v2, 0x0

    .line 2030
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    .line 94
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {v4, v1, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomepagePreLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-object v2
.end method

.method private static synthetic i()V
    .locals 0

    .line 63
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->c()Z

    .line 64
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->d()Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->g()Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$lY9_fEv5hYLPwXt25DCmxLbpFa8()V
    .locals 0

    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->i()V

    return-void
.end method
