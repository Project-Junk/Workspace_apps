.class public final synthetic Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$YDTvCP0e9i20jT5X_yc2LZQmJWo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coloros/settings/feature/multiuser/ColorUserPreference$d;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

.field private final synthetic f$1:Lcom/android/settings/users/UserSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$YDTvCP0e9i20jT5X_yc2LZQmJWo;->f$0:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$YDTvCP0e9i20jT5X_yc2LZQmJWo;->f$1:Lcom/android/settings/users/UserSettings;

    return-void
.end method


# virtual methods
.method public final showUserInitializeDialog(Landroid/content/pm/UserInfo;Lcom/coloros/settings/feature/multiuser/ColorUserPreference$f;)Z
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$YDTvCP0e9i20jT5X_yc2LZQmJWo;->f$0:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$YDTvCP0e9i20jT5X_yc2LZQmJWo;->f$1:Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0, v1, p1, p2}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->lambda$addUserPreference$1$MultiUserFeature(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;Lcom/coloros/settings/feature/multiuser/ColorUserPreference$f;)Z

    move-result p1

    return p1
.end method
