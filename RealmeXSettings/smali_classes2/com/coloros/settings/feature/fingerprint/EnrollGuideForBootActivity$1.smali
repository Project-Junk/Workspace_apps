.class Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$1;
.super Ljava/lang/Object;
.source "EnrollGuideForBootActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->showWakeUpArouseDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$1;->this$0:Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "OppoEnrollGuideForBoot"

    const-string p2, "onNegativeButton"

    .line 334
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
