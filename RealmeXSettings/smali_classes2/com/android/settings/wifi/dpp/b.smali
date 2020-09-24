.class public final Lcom/android/settings/wifi/dpp/b;
.super Ljava/lang/Object;
.source "WifiNetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/b$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:I

.field f:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/dpp/b;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget-object v0, p1, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/android/settings/wifi/dpp/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/b;->b:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    .line 74
    iget-boolean v0, p1, Lcom/android/settings/wifi/dpp/b;->d:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/b;->d:Z

    .line 75
    iget v0, p1, Lcom/android/settings/wifi/dpp/b;->e:I

    iput v0, p0, Lcom/android/settings/wifi/dpp/b;->e:I

    .line 76
    iget-boolean p1, p1, Lcom/android/settings/wifi/dpp/b;->f:Z

    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/b;->f:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/android/settings/wifi/dpp/b;->b:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    .line 65
    iput-boolean p4, p0, Lcom/android/settings/wifi/dpp/b;->d:Z

    .line 66
    iput p5, p0, Lcom/android/settings/wifi/dpp/b;->e:I

    .line 67
    iput-boolean p6, p0, Lcom/android/settings/wifi/dpp/b;->f:Z

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/b;
    .locals 7

    const-string v0, "security"

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "ssid"

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "preSharedKey"

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const-string v4, "hiddenSsid"

    .line 97
    invoke-virtual {p0, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "networkId"

    const/4 v6, -0x1

    .line 99
    invoke-virtual {p0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "isHotspot"

    .line 101
    invoke-virtual {p0, v6, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 103
    invoke-static/range {v1 .. v6}, Lcom/android/settings/wifi/dpp/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/b;
    .locals 8

    .line 108
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/wifi/dpp/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_0
    new-instance v7, Lcom/android/settings/wifi/dpp/b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/dpp/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-object v7
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 150
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 151
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_1

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_1

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_2

    .line 153
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/settings/wifi/dpp/b;)Z
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/b;->d:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/settings/wifi/dpp/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 127
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "nopass"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 128
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_1

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 312
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 316
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "\""

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 320
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 303
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 305
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/b;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/dpp/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 306
    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/b;->d:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 307
    iget v1, p0, Lcom/android/settings/wifi/dpp/b;->e:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    return-object v0
.end method
