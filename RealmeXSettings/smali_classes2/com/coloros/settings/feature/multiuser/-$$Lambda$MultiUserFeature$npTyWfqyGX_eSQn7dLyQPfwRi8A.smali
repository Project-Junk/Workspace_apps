.class public final synthetic Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$npTyWfqyGX_eSQn7dLyQPfwRi8A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coloros/settings/feature/multiuser/ColorUserPreference$c;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/users/UserPreference;

.field private final synthetic f$1:Lcom/android/settings/users/UserSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$npTyWfqyGX_eSQn7dLyQPfwRi8A;->f$0:Lcom/android/settings/users/UserPreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$npTyWfqyGX_eSQn7dLyQPfwRi8A;->f$1:Lcom/android/settings/users/UserSettings;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$npTyWfqyGX_eSQn7dLyQPfwRi8A;->f$0:Lcom/android/settings/users/UserPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$npTyWfqyGX_eSQn7dLyQPfwRi8A;->f$1:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->lambda$addUserPreference$0(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserSettings;Z)Z

    move-result p1

    return p1
.end method
