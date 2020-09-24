.class public Lcom/coloros/settings/feature/password/ScreenLockFeature;
.super Lcom/color/injector/adaptor/g;
.source "ScreenLockFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "screen_lock"
.end annotation


# static fields
.field private static final MININUM_PASSWORD_LENGTH:I = 0x6

.field public static final OPPO_ACTION_SET_PASSWORD:Ljava/lang/String; = "oppo.intent.action.SET_UNLOCK_PASSWORD"

.field public static final OPPO_ACTION_SET_PASSWORD_EXTRA:Ljava/lang/String; = "setOn"

.field private static final REQUEST_CODE_FOR_CONFIRM_PASSWORD:I = 0x1

.field public static final REQUEST_PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.request_password_type"

.field public static final SCREEN_LOCK_FEATURE_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScreenLockFeature"

.field public static final USE_NUMERIC_KEYBOARD_KEY:Ljava/lang/String; = "lockscreen.use_numeric_keyboard"


# instance fields
.field private mChooseGenericActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/password/ChooseLockGeneric;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseGenericFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseLockPasswordActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/password/ChooseLockPassword;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseLockPatternActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/password/ChooseLockPattern;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmLockPasswordActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/password/ConfirmLockPassword;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmLockPatternActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/password/ConfirmLockPattern;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmSimplePinLength:I

.field private mConfirmUserId:I

.field private mIsConfirmSimplePinQuality:Z

.field private mIsSimplePinQuality:Z

.field private mLockPasswordReceiver:Landroid/content/BroadcastReceiver;

.field private mLockPatternReceiver:Landroid/content/BroadcastReceiver;

.field private mPasswordBookModule:Lcom/coloros/settings/feature/password/module/CodeBookModule;

.field private mQuality:I

.field private mRequestQuality:I

.field private mUseNumericKeyboard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x20000

    .line 96
    iput p1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mQuality:I

    .line 109
    new-instance p1, Lcom/coloros/settings/feature/password/module/CodeBookModule;

    invoke-direct {p1}, Lcom/coloros/settings/feature/password/module/CodeBookModule;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mPasswordBookModule:Lcom/coloros/settings/feature/password/module/CodeBookModule;

    return-void
.end method

.method private getChooseGenericActivity()Lcom/android/settings/password/ChooseLockGeneric;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mChooseGenericActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ChooseLockGeneric;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getChooseGenericFragment()Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mChooseGenericFragmentRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getChooseLockPassword()Lcom/android/settings/password/ChooseLockPassword;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mChooseLockPasswordActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ChooseLockPassword;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getChooseLockPattern()Lcom/android/settings/password/ChooseLockPattern;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mChooseLockPatternActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ChooseLockPattern;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getConfirmLockPassword()Lcom/android/settings/password/ConfirmLockPassword;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mConfirmLockPasswordActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmLockPassword;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getConfirmSimplePinLength()I
    .locals 1

    .line 855
    iget v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mConfirmSimplePinLength:I

    return v0
.end method

.method private getConfirmUserId()I
    .locals 1

    .line 851
    iget v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mConfirmUserId:I

    return v0
.end method

.method public static getLockPasswordIntent(Landroid/content/Context;IIIZ[BI)Landroid/content/Intent;
    .locals 1

    .line 116
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$a;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$a;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPassword$a;->a(I)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    .line 119
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/password/ChooseLockPassword$a;->a(II)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    const-wide/16 p1, 0x0

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/password/ChooseLockPassword$a;->a(J)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    .line 121
    invoke-virtual {p0, p4}, Lcom/android/settings/password/ChooseLockPassword$a;->a(Z)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    .line 122
    invoke-virtual {p0, p6}, Lcom/android/settings/password/ChooseLockPassword$a;->b(I)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    if-eqz p5, :cond_0

    .line 124
    invoke-virtual {p0, p5}, Lcom/android/settings/password/ChooseLockPassword$a;->a([B)Lcom/android/settings/password/ChooseLockPassword$a;

    .line 2174
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    return-object p0
.end method

.method public static getLockPasswordIntent(Landroid/content/Context;IIIZ[BJI)Landroid/content/Intent;
    .locals 1

    .line 132
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$a;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$a;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPassword$a;->a(I)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    .line 135
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/password/ChooseLockPassword$a;->a(II)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    .line 136
    invoke-virtual {p0, p6, p7}, Lcom/android/settings/password/ChooseLockPassword$a;->a(J)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    .line 137
    invoke-virtual {p0, p4}, Lcom/android/settings/password/ChooseLockPassword$a;->a(Z)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    .line 138
    invoke-virtual {p0, p8}, Lcom/android/settings/password/ChooseLockPassword$a;->b(I)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    if-eqz p5, :cond_0

    .line 140
    invoke-virtual {p0, p5}, Lcom/android/settings/password/ChooseLockPassword$a;->a([B)Lcom/android/settings/password/ChooseLockPassword$a;

    .line 3174
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    return-object p0
.end method

.method public static getLockPasswordIntent(Landroid/content/Context;IIIZ[BJJI)Landroid/content/Intent;
    .locals 1

    .line 148
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$a;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$a;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPassword$a;->a(I)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    .line 151
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/password/ChooseLockPassword$a;->a(II)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    .line 152
    invoke-virtual {p0, p6, p7}, Lcom/android/settings/password/ChooseLockPassword$a;->a(J)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    .line 4142
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string p2, "has_face_challenge"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4143
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string p2, "face_challenge"

    invoke-virtual {p1, p2, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, p4}, Lcom/android/settings/password/ChooseLockPassword$a;->a(Z)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    .line 155
    invoke-virtual {p0, p10}, Lcom/android/settings/password/ChooseLockPassword$a;->b(I)Lcom/android/settings/password/ChooseLockPassword$a;

    move-result-object p0

    if-eqz p5, :cond_0

    .line 157
    invoke-virtual {p0, p5}, Lcom/android/settings/password/ChooseLockPassword$a;->a([B)Lcom/android/settings/password/ChooseLockPassword$a;

    .line 4174
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    return-object p0
.end method

.method public static getLockPatternIntent(Landroid/content/Context;Z[BI)Landroid/content/Intent;
    .locals 2

    .line 164
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$a;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$a;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPattern$a;->a(Z)Lcom/android/settings/password/ChooseLockPattern$a;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 167
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/password/ChooseLockPattern$a;->a(J)Lcom/android/settings/password/ChooseLockPattern$a;

    move-result-object p0

    .line 168
    invoke-virtual {p0, p3}, Lcom/android/settings/password/ChooseLockPattern$a;->a(I)Lcom/android/settings/password/ChooseLockPattern$a;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {p0, p2}, Lcom/android/settings/password/ChooseLockPattern$a;->a([B)Lcom/android/settings/password/ChooseLockPattern$a;

    .line 5146
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$a;->a:Landroid/content/Intent;

    return-object p0
.end method

.method public static getLockPatternIntent(Landroid/content/Context;Z[BJI)Landroid/content/Intent;
    .locals 1

    .line 177
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$a;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$a;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPattern$a;->a(Z)Lcom/android/settings/password/ChooseLockPattern$a;

    move-result-object p0

    .line 180
    invoke-virtual {p0, p3, p4}, Lcom/android/settings/password/ChooseLockPattern$a;->a(J)Lcom/android/settings/password/ChooseLockPattern$a;

    move-result-object p0

    .line 181
    invoke-virtual {p0, p5}, Lcom/android/settings/password/ChooseLockPattern$a;->a(I)Lcom/android/settings/password/ChooseLockPattern$a;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 183
    invoke-virtual {p0, p2}, Lcom/android/settings/password/ChooseLockPattern$a;->a([B)Lcom/android/settings/password/ChooseLockPattern$a;

    .line 6146
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$a;->a:Landroid/content/Intent;

    return-object p0
.end method

.method public static getLockPatternIntent(Landroid/content/Context;Z[BJJI)Landroid/content/Intent;
    .locals 1

    .line 191
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$a;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$a;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPattern$a;->a(Z)Lcom/android/settings/password/ChooseLockPattern$a;

    move-result-object p0

    .line 194
    invoke-virtual {p0, p3, p4}, Lcom/android/settings/password/ChooseLockPattern$a;->a(J)Lcom/android/settings/password/ChooseLockPattern$a;

    move-result-object p0

    .line 7120
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$a;->a:Landroid/content/Intent;

    const-string p3, "has_face_challenge"

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7121
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$a;->a:Landroid/content/Intent;

    const-string p3, "face_challenge"

    invoke-virtual {p1, p3, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, p7}, Lcom/android/settings/password/ChooseLockPattern$a;->a(I)Lcom/android/settings/password/ChooseLockPattern$a;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/settings/password/ChooseLockPattern$a;->a([B)Lcom/android/settings/password/ChooseLockPattern$a;

    .line 7146
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$a;->a:Landroid/content/Intent;

    return-object p0
.end method

.method private isConfirmSimplePinQuality(Landroid/content/Context;II)Z
    .locals 1

    .line 880
    invoke-static {p2}, Lcom/coloros/settings/utils/ag;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 881
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/ContentResolver;I)I

    move-result p1

    .line 882
    sget-object p2, Lcom/coloros/settings/feature/password/ScreenLockFeature;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "getIntent passwordLength="

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isSimplePinQuality(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILandroid/content/Intent;)Z
    .locals 2

    .line 455
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p1

    const/4 p4, 0x0

    .line 458
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    sget-object p1, Lcom/coloros/settings/feature/password/ScreenLockFeature;->TAG:Ljava/lang/String;

    const-string p2, "isSimplePinQuality getRequestedMinimumPasswordLength exception !"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p4

    .line 462
    :goto_0
    sget-object p2, Lcom/coloros/settings/feature/password/ScreenLockFeature;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSimplePinQuality requestMininumPasswordLength="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x6

    if-gt p1, p2, :cond_1

    const p1, 0x30001

    if-eq p3, p1, :cond_0

    const p1, 0x30002

    if-ne p3, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return p4
.end method

.method private showCodeBookConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 2

    .line 996
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mPasswordBookModule:Lcom/coloros/settings/feature/password/module/CodeBookModule;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/password/module/CodeBookModule;->showCodeBookConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public afterOnCreate(Landroid/os/Bundle;)Z
    .locals 3

    .line 657
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPattern()Lcom/android/settings/password/ChooseLockPattern;

    move-result-object v0

    .line 658
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 662
    invoke-static {v0}, Lcom/coloros/settings/utils/ag;->b(Landroid/app/Activity;)Z

    .line 663
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2000

    .line 665
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 667
    :cond_1
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public afterOnCreateConfirmPassword(Lcom/android/settings/password/ConfirmLockPassword;)V
    .locals 2

    .line 859
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 862
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 863
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPassword;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 865
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 867
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 868
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.android.settings.ConfirmCredentials.title"

    .line 869
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ConfirmLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 872
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Intent;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ConfirmLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public afterSuperOnCreate(Landroid/os/Bundle;)Z
    .locals 3

    .line 485
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPassword()Lcom/android/settings/password/ChooseLockPassword;

    move-result-object v0

    .line 486
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 490
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 492
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 494
    :cond_1
    invoke-static {v0}, Lcom/coloros/settings/utils/ag;->b(Landroid/app/Activity;)Z

    .line 495
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z

    .line 496
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x2000

    .line 498
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v2
.end method

.method public attachBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 563
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public attachBaseContextConfirmLockPattern(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1057
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1060
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public attachBaseContextConfirmPassword(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 952
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 955
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public attachBaseContextPattern(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 705
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public beforeOnCreate(Lcom/android/settings/password/ChooseLockPattern;)V
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mChooseLockPatternActivityRef:Ljava/lang/ref/WeakReference;

    .line 631
    invoke-static {p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeOnCreateConfirmPassword(Lcom/android/settings/password/ConfirmLockPassword;)V
    .locals 3

    .line 827
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 830
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mConfirmLockPasswordActivityRef:Ljava/lang/ref/WeakReference;

    .line 831
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 832
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 833
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mConfirmUserId:I

    .line 834
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 835
    iget v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mConfirmUserId:I

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mQuality:I

    .line 836
    iget v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mQuality:I

    iget v1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mConfirmUserId:I

    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isConfirmSimplePinQuality(Landroid/content/Context;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mIsConfirmSimplePinQuality:Z

    .line 837
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mConfirmUserId:I

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/ContentResolver;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mConfirmSimplePinLength:I

    .line 838
    sget-object v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate mQuality="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mQuality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsConfirmSimplePinQuality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mIsConfirmSimplePinQuality:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mIsConfirmSimplePinQuality:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mQuality:I

    if-eq v0, v1, :cond_1

    const/high16 v2, 0x30000

    if-ne v0, v2, :cond_2

    .line 841
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 842
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeSuperOnCreate(Lcom/android/settings/password/ChooseLockPassword;)V
    .locals 6

    .line 416
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mChooseLockPasswordActivityRef:Ljava/lang/ref/WeakReference;

    .line 420
    invoke-static {p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;)Z

    .line 421
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 422
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 423
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v2

    const/high16 v3, 0x20000

    const-string v4, "lockscreen.password_type"

    .line 424
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 426
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 427
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isSimplePinQuality(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILandroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mIsSimplePinQuality:Z

    .line 428
    iput v2, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mRequestQuality:I

    .line 429
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->d()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v4, 0x60000

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 430
    iput-boolean v5, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mIsSimplePinQuality:Z

    .line 431
    iput v4, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mRequestQuality:I

    move v2, v4

    goto :goto_0

    .line 433
    :cond_1
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    iput-boolean v1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mIsSimplePinQuality:Z

    .line 435
    iput v3, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mRequestQuality:I

    goto :goto_0

    .line 436
    :cond_2
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    iput-boolean v5, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mIsSimplePinQuality:Z

    const/high16 v0, 0x10000

    .line 438
    iput v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mRequestQuality:I

    .line 440
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mIsSimplePinQuality:Z

    if-nez v0, :cond_7

    if-eq v2, v3, :cond_7

    const/high16 v0, 0x30000

    if-ne v2, v0, :cond_4

    goto :goto_1

    :cond_4
    const p1, 0x30001

    if-eq v2, p1, :cond_5

    const p1, 0x30002

    if-ne v2, p1, :cond_6

    .line 448
    :cond_5
    iput v3, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mRequestQuality:I

    .line 450
    :cond_6
    iput-boolean v5, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mUseNumericKeyboard:Z

    return-void

    .line 442
    :cond_7
    :goto_1
    iput-boolean v1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mUseNumericKeyboard:Z

    .line 443
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 444
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_8
    :goto_2
    return-void
.end method

.method public chooseLockPasswordFinish(Landroid/content/Intent;)V
    .locals 2

    .line 552
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPassword()Lcom/android/settings/password/ChooseLockPassword;

    move-result-object v0

    .line 553
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public chooseLockPatternFinish(Landroid/content/Intent;)V
    .locals 2

    .line 718
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPattern()Lcom/android/settings/password/ChooseLockPattern;

    move-result-object v0

    .line 719
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public chooseValidLockFragment(Ljava/lang/String;)Z
    .locals 1

    .line 534
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 537
    :cond_0
    const-class v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;

    .line 538
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    .line 539
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public confirmBaseOnResume(Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;)V
    .locals 2

    .line 795
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 798
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 800
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 802
    :cond_1
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/settings/custom/a;->a(Landroid/content/Context;Z)V

    .line 803
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {p1, v0}, Lcom/coloros/settings/custom/a;->b(Landroid/content/Context;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public confirmCredentialActivityResult(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;IILandroid/content/Intent;)V
    .locals 0

    .line 1141
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    .line 1145
    invoke-virtual {p1, p3}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 1146
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    :cond_1
    return-void
.end method

.method public confirmOnPause(Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;)V
    .locals 1

    .line 807
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 810
    :cond_0
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/settings/custom/a;->a(Landroid/content/Context;Z)V

    .line 811
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {p1, v0}, Lcom/coloros/settings/custom/a;->b(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finishChooseLockGeneric()V
    .locals 4

    .line 251
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseGenericActivity()Lcom/android/settings/password/ChooseLockGeneric;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const-string v3, "open_from_dialog"

    .line 257
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f010062

    const v2, 0x7f010063

    .line 258
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockGeneric;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finishConfirmLockPattern(Lcom/android/settings/password/ConfirmLockPattern;)V
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1082
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finishConfirmPassword(Lcom/android/settings/password/ConfirmLockPassword;)V
    .locals 1

    .line 945
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getConfirmLockPattern()Lcom/android/settings/password/ConfirmLockPattern;
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mConfirmLockPatternActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmLockPattern;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragmentClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 233
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 236
    :cond_0
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ColorPackageManager;->getColorPackageManager(Landroid/content/Context;)Landroid/content/pm/ColorPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 239
    :try_start_0
    invoke-virtual {v0}, Landroid/content/pm/ColorPackageManager;->isClosedSuperFirewall()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 241
    sget-object v2, Lcom/coloros/settings/feature/password/ScreenLockFeature;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_1

    .line 244
    const-class p1, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getIntentChoosePasswordFragment(Landroid/content/Intent;ZZI)Landroid/content/Intent;
    .locals 2

    .line 401
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    const-string v1, ":settings:show_fragment"

    if-nez v0, :cond_0

    .line 402
    const-class p2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    .line 405
    :cond_0
    const-class v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 407
    const-class p2, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p2, "lockscreen.use_numeric_keyboard"

    .line 409
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "lockscreen.request_password_type"

    .line 410
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method public getIntentChoosePattern(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 635
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    const-string v1, ":settings:show_fragment"

    if-nez v0, :cond_0

    .line 636
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    .line 639
    :cond_0
    const-class p2, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method public getIntentConfirmLockPasswordFragment(Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 2

    .line 891
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    const-string v1, ":settings:show_fragment"

    if-nez v0, :cond_0

    .line 892
    const-class p2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mPasswordBookModule:Lcom/coloros/settings/feature/password/module/CodeBookModule;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/module/CodeBookModule;->initByIntent(Landroid/content/Intent;)V

    .line 896
    const-class v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 898
    const-class p2, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 900
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method public getIntentConfirmLockPattern(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1064
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    const-string v1, ":settings:show_fragment"

    if-nez v0, :cond_0

    .line 1065
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 1067
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mPasswordBookModule:Lcom/coloros/settings/feature/password/module/CodeBookModule;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/feature/password/module/CodeBookModule;->initByIntent(Landroid/content/Intent;)V

    .line 1068
    const-class p2, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getLockPasswordIntent(IIIZ[BZJZJIZILjava/lang/String;)Landroid/content/Intent;
    .locals 13

    .line 331
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseGenericFragment()Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 335
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p6, :cond_2

    if-eqz p9, :cond_1

    goto :goto_0

    :cond_1
    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p12

    .line 341
    invoke-static/range {v2 .. v8}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPasswordIntent(Landroid/content/Context;IIIZ[BI)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p10

    move/from16 v12, p12

    .line 338
    invoke-static/range {v2 .. v12}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPasswordIntent(Landroid/content/Context;IIIZ[BJJI)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    if-eqz p13, :cond_3

    const/4 v1, 0x1

    const-string v2, "change_title_for_fingerprint"

    .line 345
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "change_head_type"

    move/from16 v2, p14

    .line 346
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    :cond_3
    invoke-static/range {p15 .. p15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "start_type"

    move-object/from16 v2, p15

    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    return-object v0

    .line 333
    :cond_5
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public getLockPatternIntent(Z[BZJZJIZILjava/lang/String;)Landroid/content/Intent;
    .locals 10

    .line 357
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseGenericFragment()Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 361
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p3, :cond_2

    if-eqz p6, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    move-object v1, p2

    move/from16 v9, p9

    .line 367
    invoke-static {v2, p1, p2, v9}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPatternIntent(Landroid/content/Context;Z[BI)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, p1

    move-object v1, p2

    move/from16 v9, p9

    move v3, p1

    move-object v4, p2

    move-wide v5, p4

    move-wide/from16 v7, p7

    move/from16 v9, p9

    .line 364
    invoke-static/range {v2 .. v9}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPatternIntent(Landroid/content/Context;Z[BJJI)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    if-eqz p10, :cond_3

    const/4 v1, 0x1

    const-string v2, "change_title_for_fingerprint"

    .line 371
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "change_head_type"

    move/from16 v2, p11

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    :cond_3
    invoke-static/range {p12 .. p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "start_type"

    move-object/from16 v2, p12

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    return-object v0

    .line 359
    :cond_5
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public getRequestQuality()I
    .locals 1

    .line 481
    iget v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mRequestQuality:I

    return v0
.end method

.method public isFDE()Z
    .locals 1

    .line 1126
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1129
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    return v0
.end method

.method public isFromSystemOnlyPassword(Landroid/content/Intent;)Z
    .locals 2

    .line 1134
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "confirm_only_password"

    .line 1137
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isIsConfirmSimplePinQuality()Z
    .locals 1

    .line 847
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mIsConfirmSimplePinQuality:Z

    return v0
.end method

.method public isSimplePinQuality()Z
    .locals 1

    .line 473
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mIsSimplePinQuality:Z

    return v0
.end method

.method public isUseNumericKeyboard()Z
    .locals 1

    .line 477
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mUseNumericKeyboard:Z

    return v0
.end method

.method public isValidConfirmFragment(Ljava/lang/String;Z)Z
    .locals 1

    .line 905
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    const-class p2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 908
    :cond_0
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    .line 909
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    .line 910
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isValidFragment(Ljava/lang/String;Z)Z
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 225
    :cond_0
    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;

    .line 226
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isValidFragmentChoosePattern(Ljava/lang/String;Z)Z
    .locals 1

    .line 644
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    const-class p2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 649
    :cond_0
    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    .line 650
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isValidFragmentPattern(Ljava/lang/String;)Z
    .locals 1

    .line 1072
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1075
    :cond_0
    const-class v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public launchConfirmationActivity(Landroid/app/Activity;Lcom/coloros/settings/feature/password/a;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z
    .locals 12

    .line 1174
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v1, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v11, p13

    .line 1175
    invoke-virtual/range {v1 .. v11}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move-wide/from16 v8, p11

    move/from16 v10, p13

    .line 1179
    invoke-virtual/range {v0 .. v10}, Lcom/coloros/settings/feature/password/a;->a(Landroid/app/Activity;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivityWithExternalAndChallenge(Landroid/app/Activity;Lcom/coloros/settings/feature/password/a;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z
    .locals 12

    .line 1153
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    move-object/from16 v5, p6

    move-object/from16 v1, p7

    move/from16 v7, p9

    move/from16 v11, p13

    .line 1154
    invoke-virtual {p2, v5, v1, v7, v11}, Lcom/coloros/settings/feature/password/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, p2

    move-object/from16 v5, p6

    move/from16 v7, p9

    move/from16 v11, p13

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p5

    move/from16 v6, p8

    move/from16 v8, p10

    move-wide/from16 v9, p11

    .line 1158
    invoke-virtual/range {v1 .. v11}, Lcom/coloros/settings/feature/password/a;->a(Landroid/app/Activity;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public onBackPressedChooseLockPassword()Z
    .locals 2

    .line 595
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPassword()Lcom/android/settings/password/ChooseLockPassword;

    move-result-object v0

    .line 596
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    invoke-static {v0}, Lcom/coloros/settings/utils/ag;->c(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressedConfirmLockPattern(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 1

    .line 1086
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1089
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->showCodeBookConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    return v0

    .line 1092
    :cond_1
    invoke-static {p1}, Lcom/coloros/settings/utils/ag;->c(Landroid/app/Activity;)V

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressedConfirmPassword(Lcom/android/settings/password/ConfirmLockPassword;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 1

    .line 959
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 963
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->showCodeBookConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    return v0

    .line 967
    :cond_1
    invoke-static {p1}, Lcom/coloros/settings/utils/ag;->c(Landroid/app/Activity;)V

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onChoosePasswordNavigateUp()Z
    .locals 2

    .line 543
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPassword()Lcom/android/settings/password/ChooseLockPassword;

    move-result-object v0

    .line 544
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onChoosePatternNavigateUp()Z
    .locals 2

    .line 709
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPattern()Lcom/android/settings/password/ChooseLockPattern;

    move-result-object v0

    .line 710
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Lcom/android/settings/password/ChooseLockGeneric;Landroid/os/Bundle;)V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mChooseGenericActivityRef:Ljava/lang/ref/WeakReference;

    .line 209
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 210
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockGeneric;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 212
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 214
    :cond_1
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z

    return-void
.end method

.method public onCreateChooseFragment(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mChooseGenericFragmentRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mChooseGenericFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onCreateConfirmPattern(Lcom/android/settings/password/ConfirmLockPattern;)V
    .locals 2

    .line 1012
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1015
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mConfirmLockPatternActivityRef:Ljava/lang/ref/WeakReference;

    .line 1016
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1017
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 1018
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPattern;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1020
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1023
    :cond_1
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1026
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Intent;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings/password/ConfirmLockPattern;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 567
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPassword()Lcom/android/settings/password/ChooseLockPassword;

    move-result-object v0

    .line 568
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0a03d7

    .line 572
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 573
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "change_head_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v0, 0x7f1214ed

    .line 576
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateOptionsMenuConfirmBase(Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;Landroid/view/Menu;)Z
    .locals 2

    .line 781
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 784
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a03d7

    .line 785
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 786
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "customize_cancel_title"

    .line 787
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 788
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 789
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateOptionsMenuPattern(Landroid/view/Menu;)Z
    .locals 3

    .line 735
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPattern()Lcom/android/settings/password/ChooseLockPattern;

    move-result-object v0

    .line 736
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0a03d7

    .line 740
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 741
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "change_head_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v0, 0x7f1214ed

    .line 744
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCredentialFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyConfirmLockPattern()V
    .locals 1

    .line 1050
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1053
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public onOptionsItemLockGenericSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 264
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseGenericActivity()Lcom/android/settings/password/ChooseLockGeneric;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x102002c

    if-ne p1, v1, :cond_1

    .line 269
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 582
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPassword()Lcom/android/settings/password/ChooseLockPassword;

    move-result-object v0

    .line 583
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x7f0a03d7

    if-eq p1, v1, :cond_1

    return v2

    .line 588
    :cond_1
    invoke-static {v0}, Lcom/coloros/settings/utils/ag;->c(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public onOptionsItemSelectedConfirmPassword(Landroid/view/MenuItem;ZLcom/android/settings/password/ConfirmLockPassword;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 2

    .line 974
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    .line 977
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a03d7

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0490

    if-eq p1, v0, :cond_1

    return v1

    .line 981
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->showCodeBookConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result p1

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    return p4

    :cond_2
    if-eqz p2, :cond_3

    .line 986
    invoke-virtual {p3, p4}, Lcom/android/settings/password/ConfirmLockPassword;->setResult(I)V

    .line 988
    :cond_3
    invoke-static {p3}, Lcom/coloros/settings/utils/ag;->c(Landroid/app/Activity;)V

    return p4

    :cond_4
    :goto_0
    return v1
.end method

.method public onOptionsItemSelectedLockPattern(ZLandroid/view/MenuItem;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 3

    .line 1097
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getConfirmLockPattern()Lcom/android/settings/password/ConfirmLockPattern;

    move-result-object v0

    .line 1098
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x7f0a03d7

    if-eq p2, v1, :cond_1

    return v2

    .line 1103
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->showCodeBookConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    return p3

    :cond_2
    if-eqz p1, :cond_3

    .line 1108
    invoke-virtual {v0, p3}, Lcom/android/settings/password/ConfirmLockPattern;->setResult(I)V

    .line 1110
    :cond_3
    invoke-static {v0}, Lcom/coloros/settings/utils/ag;->c(Landroid/app/Activity;)V

    return p3

    :cond_4
    :goto_0
    return v2
.end method

.method public onOptionsItemSelectedPattern(Landroid/view/MenuItem;)Z
    .locals 3

    .line 750
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPattern()Lcom/android/settings/password/ChooseLockPattern;

    move-result-object v0

    .line 751
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x7f0a03d7

    if-eq p1, v1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    .line 756
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPattern;->setResult(I)V

    .line 757
    invoke-static {v0}, Lcom/coloros/settings/utils/ag;->c(Landroid/app/Activity;)V

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public onPatternBackPressed()Z
    .locals 2

    .line 726
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPattern()Lcom/android/settings/password/ChooseLockPattern;

    move-result-object v0

    .line 727
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    invoke-static {v0}, Lcom/coloros/settings/utils/ag;->c(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 613
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPassword()Lcom/android/settings/password/ChooseLockPassword;

    move-result-object v0

    .line 614
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 617
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Z)V

    .line 618
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {v0, v1}, Lcom/coloros/settings/custom/a;->b(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPausePattern()V
    .locals 2

    .line 772
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPattern()Lcom/android/settings/password/ChooseLockPattern;

    move-result-object v0

    .line 773
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 776
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 604
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPassword()Lcom/android/settings/password/ChooseLockPassword;

    move-result-object v0

    .line 605
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 608
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Z)V

    .line 609
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {v0, v1}, Lcom/coloros/settings/custom/a;->b(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResumeConfirmLockPattern(ZLcom/android/settings/password/ConfirmLockPattern;)V
    .locals 3

    .line 1035
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1038
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1039
    invoke-virtual {p2}, Lcom/android/settings/password/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    .line 1040
    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 1041
    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    .line 1042
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-nez p1, :cond_1

    const/high16 p1, 0x10000

    if-eq v0, p1, :cond_1

    .line 1044
    invoke-virtual {p2}, Lcom/android/settings/password/ConfirmLockPattern;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResumeConfirmPassword(ZLcom/android/settings/password/ConfirmLockPassword;)V
    .locals 4

    .line 917
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 920
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 921
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getConfirmUserId()I

    move-result v1

    .line 922
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 923
    invoke-direct {p0, p2, v0, v1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isConfirmSimplePinQuality(Landroid/content/Context;II)Z

    move-result v2

    .line 924
    invoke-virtual {p2}, Lcom/android/settings/password/ConfirmLockPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/ContentResolver;I)I

    move-result v1

    if-nez p1, :cond_3

    const/high16 p1, 0x20000

    if-eq v0, p1, :cond_1

    const/high16 p1, 0x30000

    if-eq v0, p1, :cond_1

    const/high16 p1, 0x40000

    if-eq v0, p1, :cond_1

    const/high16 p1, 0x50000

    if-eq v0, p1, :cond_1

    const/high16 p1, 0x60000

    if-eq v0, p1, :cond_1

    const/high16 p1, 0x80000

    if-eq v0, p1, :cond_1

    .line 938
    invoke-virtual {p2}, Lcom/android/settings/password/ConfirmLockPassword;->finish()V

    goto :goto_0

    .line 933
    :cond_1
    iget p1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mQuality:I

    if-ne p1, v0, :cond_2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getConfirmSimplePinLength()I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 934
    :cond_2
    invoke-virtual {p2}, Lcom/android/settings/password/ConfirmLockPassword;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onResumePattern()V
    .locals 2

    .line 764
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPattern()Lcom/android/settings/password/ChooseLockPattern;

    move-result-object v0

    .line 765
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 768
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public putExtraData(Landroid/content/Intent;Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 2

    .line 381
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "change_title_for_face"

    .line 384
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "from_lock_screen"

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 385
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "from_fingerprint_reset"

    .line 388
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 387
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "from_email_reset"

    .line 390
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 389
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1
.end method

.method public registerPatternReceiver()V
    .locals 5

    .line 672
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPattern()Lcom/android/settings/password/ChooseLockPattern;

    move-result-object v0

    .line 673
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "from_fingerprint_reset"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    new-instance v1, Lcom/coloros/settings/feature/password/ScreenLockFeature$2;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature$2;-><init>(Lcom/coloros/settings/feature/password/ScreenLockFeature;Lcom/android/settings/password/ChooseLockPattern;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mLockPatternReceiver:Landroid/content/BroadcastReceiver;

    .line 684
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_PRESENT"

    .line 685
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 686
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mLockPatternReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/settings/password/ChooseLockPattern;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method

.method public registerReceiver()V
    .locals 5

    .line 504
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPassword()Lcom/android/settings/password/ChooseLockPassword;

    move-result-object v0

    .line 505
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "from_fingerprint_reset"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    new-instance v1, Lcom/coloros/settings/feature/password/ScreenLockFeature$1;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature$1;-><init>(Lcom/coloros/settings/feature/password/ScreenLockFeature;Lcom/android/settings/password/ChooseLockPassword;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mLockPasswordReceiver:Landroid/content/BroadcastReceiver;

    .line 515
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_PRESENT"

    .line 516
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 517
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mLockPasswordReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/settings/password/ChooseLockPassword;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method

.method public sendUnspecifiedBroadcast(Z)V
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseGenericFragment()Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 313
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 316
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "screen_lock"

    if-eqz p1, :cond_2

    const-string p1, "psw_off"

    .line 7273
    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "psw_none"

    .line 8273
    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 323
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 324
    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public shouldProvisioned(Z)Z
    .locals 1

    .line 1118
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public showDisScreenResize(Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;Landroid/os/Bundle;)V
    .locals 1

    .line 815
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 818
    :cond_0
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ZZI)V
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseGenericFragment()Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 293
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 298
    invoke-virtual {v0, p1, p4}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    const/high16 p2, 0x2000000

    .line 302
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 304
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public unregisterPatternReceiver()V
    .locals 2

    .line 692
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPattern()Lcom/android/settings/password/ChooseLockPattern;

    move-result-object v0

    .line 693
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mLockPatternReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 697
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 523
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getChooseLockPassword()Lcom/android/settings/password/ChooseLockPassword;

    move-result-object v0

    .line 524
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mLockPasswordReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 528
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature;->mLockPasswordReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    :goto_0
    return-void
.end method
