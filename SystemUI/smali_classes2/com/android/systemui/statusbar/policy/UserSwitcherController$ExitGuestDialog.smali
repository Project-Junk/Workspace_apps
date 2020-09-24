.class final Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "UserSwitcherController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExitGuestDialog"
.end annotation


# instance fields
.field private final mGuestId:I

.field private final mTargetId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;II)V
    .locals 1

    .line 924
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 925
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f11035d

    .line 926
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setTitle(I)V

    const p1, 0x7f11035b

    .line 927
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x1040000

    .line 929
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    .line 928
    invoke-virtual {p0, v0, p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x7f11035c

    .line 931
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    .line 930
    invoke-virtual {p0, p2, p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 932
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    const/4 p1, 0x0

    .line 933
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setCanceledOnTouchOutside(Z)V

    .line 934
    iput p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mGuestId:I

    .line 935
    iput p4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mTargetId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->cancel()V

    goto :goto_0

    .line 943
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->dismiss()V

    .line 944
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mGuestId:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mTargetId:I

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->exitGuest(II)V

    :goto_0
    return-void
.end method
