.class Lcom/coloros/systemui/notification/power/ColorosPowerUI$3;
.super Ljava/lang/Object;
.source "ColorosPowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showInvalidChargerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$3;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$3;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInvalidChargerDialog:Lcolor/support/v7/app/AlertDialog;

    .line 451
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-void
.end method
