.class public final synthetic Lcom/coloros/settings/feature/password/controller/-$$Lambda$SmartLockController$C7QlvrHd85MGuZ_IqeMyQPsHDbY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/password/controller/SmartLockController;

.field private final synthetic f$1:Landroidx/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/password/controller/SmartLockController;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/password/controller/-$$Lambda$SmartLockController$C7QlvrHd85MGuZ_IqeMyQPsHDbY;->f$0:Lcom/coloros/settings/feature/password/controller/SmartLockController;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/controller/-$$Lambda$SmartLockController$C7QlvrHd85MGuZ_IqeMyQPsHDbY;->f$1:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/-$$Lambda$SmartLockController$C7QlvrHd85MGuZ_IqeMyQPsHDbY;->f$0:Lcom/coloros/settings/feature/password/controller/SmartLockController;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/-$$Lambda$SmartLockController$C7QlvrHd85MGuZ_IqeMyQPsHDbY;->f$1:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/password/controller/SmartLockController;->lambda$displayPreference$1$SmartLockController(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
