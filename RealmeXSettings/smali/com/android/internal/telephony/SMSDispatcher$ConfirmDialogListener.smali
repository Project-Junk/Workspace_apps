.class final Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConfirmDialogListener"
.end annotation


# static fields
.field private static final NEVER_ALLOW:I = 0x1

.field private static final RATE_LIMIT:I = 0x1

.field private static final SHORT_CODE_MSG:I


# instance fields
.field private mConfirmationType:I

.field private mNegativeButton:Landroid/widget/Button;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPositiveButton:Landroid/widget/Button;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mRememberChoice:Z

.field private final mRememberUndoInstruction:Landroid/widget/TextView;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;I)V
    .locals 0

    .line 1891
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1892
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1893
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    .line 1894
    iput p4, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mConfirmationType:I

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string p1, "SMSDispatcher"

    const-string v0, "dialog dismissed: don\'t send SMS"

    .line 1941
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1943
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mConfirmationType:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 1944
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1949
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "remember this choice: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMSDispatcher"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberChoice:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1952
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mPositiveButton:Landroid/widget/Button;

    const v0, 0x104069b

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 1953
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mNegativeButton:Landroid/widget/Button;

    const v0, 0x104069e

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 1954
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const v0, 0x10406a1

    .line 1956
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1957
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    const/16 v0, 0x20

    invoke-virtual {p2, p1, p1, p1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    .line 1960
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mPositiveButton:Landroid/widget/Button;

    const v0, 0x104069a

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 1961
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mNegativeButton:Landroid/widget/Button;

    const v0, 0x104069c

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 1962
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const-string v0, ""

    .line 1963
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1964
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "SMSDispatcher"

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const-string p2, "CONFIRM sending SMS"

    .line 1912
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0xc3d0

    .line 1915
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p2, :cond_0

    goto :goto_0

    .line 1916
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1914
    :goto_0
    invoke-static {p1, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1917
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 p2, 0x5

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1918
    iget-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberChoice:Z

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :cond_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_4

    const-string p2, "DENY sending SMS"

    .line 1922
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0xc3cd

    .line 1925
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p2, :cond_2

    goto :goto_1

    .line 1926
    :cond_2
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1924
    :goto_1
    invoke-static {p1, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1927
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 p2, 0x7

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1928
    iget p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mConfirmationType:I

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 1929
    iget-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberChoice:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    .line 1931
    iput v0, p1, Landroid/os/Message;->arg2:I

    move v0, p2

    .line 1933
    :cond_3
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1935
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->setPremiumSmsPermission(Ljava/lang/String;I)V

    return-void
.end method

.method final setNegativeButton(Landroid/widget/Button;)V
    .locals 0

    .line 1902
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mNegativeButton:Landroid/widget/Button;

    return-void
.end method

.method final setPositiveButton(Landroid/widget/Button;)V
    .locals 0

    .line 1898
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mPositiveButton:Landroid/widget/Button;

    return-void
.end method
