.class public Lcom/android/settings/IccLockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/EditPinPreference$a;


# instance fields
.field public a:I

.field public b:Z

.field public c:Lcom/android/internal/telephony/Phone;

.field public d:Lcom/android/settings/EditPinPreference;

.field public e:Landroidx/preference/TwoStatePreference;

.field public f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/TabHost;

.field private l:Landroid/widget/TabWidget;

.field private m:Landroid/widget/ListView;

.field private n:Landroid/content/res/Resources;

.field private o:Z

.field private final p:Landroid/content/BroadcastReceiver;

.field private q:Landroid/widget/TabHost$OnTabChangeListener;

.field private r:Landroid/widget/TabHost$TabContentFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    .line 124
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->o:Z

    .line 135
    new-instance v0, Lcom/android/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$1;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->f:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/android/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$2;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->p:Landroid/content/BroadcastReceiver;

    .line 640
    new-instance v0, Lcom/android/settings/IccLockSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$4;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->q:Landroid/widget/TabHost$OnTabChangeListener;

    .line 655
    new-instance v0, Lcom/android/settings/IccLockSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$5;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->r:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const v1, 0x7f121ab1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 613
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const v1, 0x7f100060

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 615
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 614
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const v1, 0x7f12102f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 619
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " displayMessage="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IccLockSettings"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->c()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 1

    if-nez p1, :cond_0

    .line 4591
    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4593
    :cond_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const v0, 0x7f1214af

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 4595
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4598
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->b()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/IccLockSettings;ZILjava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4518
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    iget-boolean p2, p0, Lcom/android/settings/IccLockSettings;->b:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4520
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    iget-boolean p2, p0, Lcom/android/settings/IccLockSettings;->b:Z

    invoke-virtual {p1, p2}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    goto :goto_0

    .line 4523
    :cond_0
    instance-of p1, p3, Lcom/android/internal/telephony/CommandException;

    if-eqz p1, :cond_3

    .line 4524
    check-cast p3, Lcom/android/internal/telephony/CommandException;

    check-cast p3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 4525
    sget-object p3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, p3, :cond_1

    .line 4526
    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4528
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/IccLockSettings;->b:Z

    if-eqz p1, :cond_2

    .line 4529
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const p3, 0x7f1214d4

    .line 4530
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4529
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 4530
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4532
    :cond_2
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const p3, 0x7f1214d2

    .line 4533
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4532
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 4533
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4538
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 4539
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->b()V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 6

    const-string v0, "layout_inflater"

    .line 547
    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string v1, "com.android.internal.R.layout.transient_notification"

    .line 548
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "com.android.internal.R.id.message"

    .line 549
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 550
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 553
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 554
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    .line 555
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "com.android.internal.R.integer.config_toastDefaultGravity"

    .line 556
    invoke-static {v4}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 555
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 557
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 554
    invoke-static {v3, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 558
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v3, v2, 0x7

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x7

    if-ne v3, v5, :cond_0

    .line 560
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_0
    const/16 v3, 0x70

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 563
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 565
    :cond_1
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.android.internal.R.dimen.toast_y_offset"

    .line 566
    invoke-static {v3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 565
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, -0x2

    .line 568
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 569
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x3

    .line 570
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v2, "com.android.internal.R.style.Animation_Toast"

    .line 571
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v2, 0x7de

    .line 572
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 573
    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p1, 0x98

    .line 574
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string/jumbo p1, "window"

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/settings/IccLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 579
    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->f:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/IccLockSettings$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/settings/IccLockSettings$3;-><init>(Lcom/android/settings/IccLockSettings;Landroid/view/WindowManager;Landroid/view/View;)V

    const-wide/16 v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->k:Landroid/widget/TabHost;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 275
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->updatePreferences()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->c:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 284
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_2

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    if-eqz v0, :cond_3

    .line 293
    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_4

    .line 296
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->c:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_4

    .line 298
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method private d()V
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 403
    iget v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const v2, 0x7f1214ae

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_1

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const v1, 0x7f1214db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const v1, 0x7f1214bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const v1, 0x7f1214be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 405
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const v1, 0x7f1214bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->b:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const v3, 0x7f1214b7

    .line 407
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const v3, 0x7f1214b1

    .line 408
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 406
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 423
    :goto_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->j:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 425
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->j:Ljava/lang/String;

    .line 427
    :cond_5
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 682
    const-class v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 683
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 385
    iget v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->d()V

    .line 390
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->showPinDialog()Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->a()V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->b()Landroid/widget/EditText;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 396
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/settings/EditPinPreference;Z)V
    .locals 3

    if-nez p2, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->b()V

    .line 434
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->updatePreferences()Z

    return-void

    .line 438
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    .line 439
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    .line 2625
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x8

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, p2

    :goto_1
    if-nez p1, :cond_3

    .line 440
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->o:Z

    return-void

    .line 443
    :cond_3
    iget p1, p0, Lcom/android/settings/IccLockSettings;->a:I

    if-eq p1, v0, :cond_8

    const/4 p2, 0x2

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-eq p1, p2, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, v1, :cond_4

    goto :goto_2

    .line 460
    :cond_4
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 461
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const p2, 0x7f1214d7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->j:Ljava/lang/String;

    .line 462
    iput v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    .line 463
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    return-void

    .line 465
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->b()V

    .line 466
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->j:Ljava/lang/String;

    .line 3602
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->f:Landroid/os/Handler;

    const/16 p2, 0x65

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 3603
    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->c:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->i:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :goto_2
    return-void

    .line 455
    :cond_6
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->i:Ljava/lang/String;

    .line 456
    iput v1, p0, Lcom/android/settings/IccLockSettings;->a:I

    .line 457
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    return-void

    .line 449
    :cond_7
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->h:Ljava/lang/String;

    .line 450
    iput v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    .line 451
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->j:Ljava/lang/String;

    .line 452
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    return-void

    .line 3498
    :cond_8
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->f:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 3499
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->c:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->b:Z

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 3501
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 633
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->j:Ljava/lang/String;

    const/4 v0, 0x2

    .line 634
    iput v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    const-string v0, ""

    .line 635
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    .line 636
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->d()V

    const/4 v0, 0x0

    .line 637
    iput v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ab4

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x38

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 677
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 178
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->finish()V

    return-void

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object v0

    const v1, 0x7f150115

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->getPreferenceLayoutResId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->addPreferencesFromResource(I)V

    const-string v0, "sim_pin"

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    .line 187
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    const v1, 0x7f0d00c6

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setWidgetLayoutResource(I)V

    const-string v0, "sim_toggle"

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_3

    const-string v0, "dialogState"

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    const-string v0, "dialogPin"

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->g:Ljava/lang/String;

    const-string v0, "dialogError"

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->j:Ljava/lang/String;

    const-string v0, "enableState"

    .line 193
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->b:Z

    .line 196
    iget v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    const/4 v1, 0x3

    const-string v2, "oldPinCode"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->h:Ljava/lang/String;

    const-string v0, "newPinCode"

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->i:Ljava/lang/String;

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->h:Ljava/lang/String;

    .line 213
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    .line 1048
    iput-object p0, p1, Lcom/android/settings/EditPinPreference;->a:Lcom/android/settings/EditPinPreference$a;

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setPersistent(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    .line 220
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->onCreate()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 227
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 229
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 230
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->showTabLayout()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0d0193

    const/4 v3, 0x0

    .line 231
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a04fd

    .line 232
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 233
    invoke-static {p2, v2, v4}, Lcom/android/settings/m;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    .line 234
    invoke-super {p0, p1, v4, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 235
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x1020012

    .line 237
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->k:Landroid/widget/TabHost;

    const p1, 0x1020013

    .line 238
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabWidget;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->l:Landroid/widget/TabWidget;

    const p1, 0x102000a

    .line 239
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->m:Landroid/widget/ListView;

    .line 241
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->k:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 242
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->k:Landroid/widget/TabHost;

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->q:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 243
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->k:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 245
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    move p2, v3

    :goto_0
    if-ge p2, v0, :cond_1

    .line 247
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 248
    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->k:Landroid/widget/TabHost;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f1214b6

    new-array v8, v1, [Ljava/lang/Object;

    add-int/lit8 v9, p2, 0x1

    .line 250
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 251
    :cond_0
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 249
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1663
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->k:Landroid/widget/TabHost;

    invoke-virtual {v7, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/IccLockSettings;->r:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v4, v6}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 248
    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p1, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 256
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->c:Lcom/android/internal/telephony/Phone;

    if-eqz p3, :cond_3

    const-string p1, "currentTab"

    .line 258
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 259
    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->k:Landroid/widget/TabHost;

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_3
    return-object v2

    .line 263
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->c:Lcom/android/internal/telephony/Phone;

    .line 264
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 671
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 672
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 335
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 336
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->registerReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 476
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->handlePinToggleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 480
    :cond_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/IccLockSettings;->b:Z

    .line 482
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->b:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 483
    iput v1, p0, Lcom/android/settings/IccLockSettings;->a:I

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->a()V

    goto :goto_0

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    if-ne p1, v0, :cond_3

    .line 486
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->handlePinModifyClick()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x2

    .line 489
    iput p1, p0, Lcom/android/settings/IccLockSettings;->a:I

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 310
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 312
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->setPhoneValue()V

    .line 316
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->e()Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->registerReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    :cond_0
    iget v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    if-eqz v0, :cond_2

    .line 322
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->o:Z

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->n:Landroid/content/res/Resources;

    const v1, 0x7f12149d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->o:Z

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->a()V

    return-void

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    .line 2065
    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->c()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2066
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 354
    iget v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    const-string v1, "dialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->b()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialogPin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->j:Ljava/lang/String;

    const-string v1, "dialogError"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->b:Z

    const-string v1, "enableState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    iget v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    const/4 v1, 0x3

    const-string v2, "oldPinCode"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->h:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->i:Ljava/lang/String;

    const-string v1, "newPinCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->h:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 376
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 379
    :goto_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->k:Landroid/widget/TabHost;

    if-eqz v0, :cond_4

    .line 380
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 270
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 271
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->c()V

    return-void
.end method
