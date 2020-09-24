.class public final synthetic Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$KF0leV5pMeUqu7R2cF-l-irQbQk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

.field private final synthetic f$1:Lcom/android/settings/users/UserSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$KF0leV5pMeUqu7R2cF-l-irQbQk;->f$0:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$KF0leV5pMeUqu7R2cF-l-irQbQk;->f$1:Lcom/android/settings/users/UserSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$KF0leV5pMeUqu7R2cF-l-irQbQk;->f$0:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$KF0leV5pMeUqu7R2cF-l-irQbQk;->f$1:Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0, v1, p1, p2}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->lambda$showInitializeUserDialog$2$MultiUserFeature(Lcom/android/settings/users/UserSettings;Landroid/content/DialogInterface;I)V

    return-void
.end method
