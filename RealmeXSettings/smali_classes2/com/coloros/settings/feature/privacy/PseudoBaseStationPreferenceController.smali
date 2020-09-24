.class public Lcom/coloros/settings/feature/privacy/PseudoBaseStationPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "PseudoBaseStationPreferenceController.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "key_pseudo_base_station"

.field private static final PACKAGE_BLACKLIST:Ljava/lang/String; = "com.coloros.blacklistapp"

.field private static final PACKAGE_BLACKLIST_ACTION_PRESEUDO:Ljava/lang/String; = "oppo.intent.action.blacklist.view_pseudo_base_station"

.field private static sIsOppoBlacklistEnabledForExp:Ljava/lang/Boolean;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/PseudoBaseStationPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.coloros.fake.bs"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/coloros/settings/feature/privacy/PseudoBaseStationPreferenceController;->isColorOsBlacklistEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isColorOsBlacklistEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 60
    sget-object v0, Lcom/coloros/settings/feature/privacy/PseudoBaseStationPreferenceController;->sIsOppoBlacklistEnabledForExp:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "com.coloros.blacklistapp"

    .line 61
    invoke-static {p0, v0}, Lcom/coloros/settings/privacy/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/feature/privacy/PseudoBaseStationPreferenceController;->sIsOppoBlacklistEnabledForExp:Ljava/lang/Boolean;

    .line 63
    :cond_0
    sget-object p0, Lcom/coloros/settings/feature/privacy/PseudoBaseStationPreferenceController;->sIsOppoBlacklistEnabledForExp:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/PseudoBaseStationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/privacy/PseudoBaseStationPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.blacklist.view_pseudo_base_station"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.coloros.blacklistapp"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
