.class public final synthetic Lcom/coloros/settings/feature/accounts/-$$Lambda$ColorAccountSyncSettings$3wX5ftx2Dowt5bfbiULcte68-lc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;

.field private final synthetic f$1:Landroid/content/DialogInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/accounts/-$$Lambda$ColorAccountSyncSettings$3wX5ftx2Dowt5bfbiULcte68-lc;->f$0:Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;

    iput-object p2, p0, Lcom/coloros/settings/feature/accounts/-$$Lambda$ColorAccountSyncSettings$3wX5ftx2Dowt5bfbiULcte68-lc;->f$1:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/-$$Lambda$ColorAccountSyncSettings$3wX5ftx2Dowt5bfbiULcte68-lc;->f$0:Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;

    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/-$$Lambda$ColorAccountSyncSettings$3wX5ftx2Dowt5bfbiULcte68-lc;->f$1:Landroid/content/DialogInterface;

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->lambda$3wX5ftx2Dowt5bfbiULcte68-lc(Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;Landroid/content/DialogInterface;Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method
