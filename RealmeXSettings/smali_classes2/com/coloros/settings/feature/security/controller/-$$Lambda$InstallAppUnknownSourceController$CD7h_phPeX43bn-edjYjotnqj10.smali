.class public final synthetic Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$CD7h_phPeX43bn-edjYjotnqj10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field private final synthetic f$0:[Ljava/lang/String;

.field private final synthetic f$1:Landroid/app/AppOpsManager;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Landroid/app/AppOpsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$CD7h_phPeX43bn-edjYjotnqj10;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$CD7h_phPeX43bn-edjYjotnqj10;->f$1:Landroid/app/AppOpsManager;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$CD7h_phPeX43bn-edjYjotnqj10;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$CD7h_phPeX43bn-edjYjotnqj10;->f$1:Landroid/app/AppOpsManager;

    check-cast p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->lambda$CD7h_phPeX43bn-edjYjotnqj10([Ljava/lang/String;Landroid/app/AppOpsManager;Lcom/coloros/settingslib/applications/ApplicationsState$a;)I

    move-result p1

    return p1
.end method
