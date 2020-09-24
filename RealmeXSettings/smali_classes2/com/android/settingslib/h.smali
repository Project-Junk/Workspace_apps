.class public final Lcom/android/settingslib/h;
.super Lcom/android/settingslib/g;
.source "RestrictedLockUtilsInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/h$b;,
        Lcom/android/settingslib/h$a;
    }
.end annotation


# static fields
.field static a:Lcom/android/settingslib/h$b;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 684
    new-instance v0, Lcom/android/settingslib/h$b;

    invoke-direct {v0}, Lcom/android/settingslib/h$b;-><init>()V

    sput-object v0, Lcom/android/settingslib/h;->a:Lcom/android/settingslib/h$b;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const v0, 0x10800b4

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    .line 66
    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x1010435

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 67
    invoke-virtual {p0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 68
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 71
    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0
.end method

.method private static a(I)Landroid/os/UserHandle;
    .locals 1

    const/16 v0, -0x2710

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_0
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;II)Lcom/android/settingslib/g$a;
    .locals 5

    .line 154
    new-instance v0, Lcom/android/settingslib/-$$Lambda$h$Oxml60pbIMI975skEIQbwQ_8jvs;

    invoke-direct {v0, p2, p1}, Lcom/android/settingslib/-$$Lambda$h$Oxml60pbIMI975skEIQbwQ_8jvs;-><init>(II)V

    .line 161
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "device_policy"

    .line 163
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 164
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 1201
    :cond_0
    invoke-static {p2}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1204
    invoke-interface {v0, p0, v3, p2}, Lcom/android/settingslib/h$a;->isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    .line 1206
    new-instance v1, Lcom/android/settingslib/g$a;

    invoke-direct {v1, v3, v2}, Lcom/android/settingslib/g$a;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1208
    :cond_2
    sget-object p0, Lcom/android/settingslib/g$a;->d:Lcom/android/settingslib/g$a;

    return-object p0

    :cond_3
    return-object v1

    .line 166
    :cond_4
    invoke-static {p0, p2, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;ILcom/android/settingslib/h$a;)Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;ILcom/android/settingslib/h$a;)Lcom/android/settingslib/g$a;
    .locals 9

    const-string v0, "device_policy"

    .line 497
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 502
    :cond_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 506
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    .line 507
    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 511
    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 512
    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 10689
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    .line 514
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    if-nez v5, :cond_4

    .line 516
    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p2, v0, v6, v7}, Lcom/android/settingslib/h$a;->isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v1, :cond_3

    .line 518
    new-instance v1, Lcom/android/settingslib/g$a;

    invoke-direct {v1, v6, v4}, Lcom/android/settingslib/g$a;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 520
    :cond_3
    sget-object p0, Lcom/android/settingslib/g$a;->d:Lcom/android/settingslib/g$a;

    return-object p0

    .line 529
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10693
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    .line 533
    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p2, v7, v6, v8}, Lcom/android/settingslib/h$a;->isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v1, :cond_5

    .line 535
    new-instance v1, Lcom/android/settingslib/g$a;

    invoke-direct {v1, v6, v4}, Lcom/android/settingslib/g$a;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 537
    :cond_5
    sget-object p0, Lcom/android/settingslib/g$a;->d:Lcom/android/settingslib/g$a;

    return-object p0

    :cond_6
    return-object v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/g$a;
    .locals 2

    const-string v0, "device_policy"

    .line 551
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 556
    :cond_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 558
    new-instance v0, Lcom/android/settingslib/g$a;

    .line 559
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settingslib/g$a;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;
    .locals 5

    const-string v0, "device_policy"

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 94
    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 96
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/UserManager;->getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 101
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 102
    invoke-static {p1}, Lcom/android/settingslib/g$a;->a(Ljava/lang/String;)Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x0

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v4}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v4

    .line 106
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v2}, Landroid/os/UserManager$EnforcingUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x4

    if-ne v4, v3, :cond_5

    if-ne v2, p2, :cond_3

    .line 110
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/h;->i(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0

    .line 114
    :cond_3
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 115
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, p2, :cond_4

    .line 116
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/h;->i(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0

    .line 117
    :cond_4
    invoke-static {p1}, Lcom/android/settingslib/g$a;->a(Ljava/lang/String;)Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v0, 0x2

    if-ne v4, v0, :cond_7

    if-ne v2, p2, :cond_6

    .line 123
    invoke-static {p0, p1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0

    .line 124
    :cond_6
    invoke-static {p1}, Lcom/android/settingslib/g$a;->a(Ljava/lang/String;)Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/g$a;)V
    .locals 5

    .line 594
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 595
    invoke-static {v0}, Lcom/android/settingslib/h;->a(Landroid/text/SpannableStringBuilder;)V

    if-eqz p2, :cond_0

    .line 598
    sget v1, Lcom/android/settingslib/e$c;->disabled_text_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 599
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 601
    new-instance v1, Lcom/android/settingslib/f;

    invoke-direct {v1, p0}, Lcom/android/settingslib/f;-><init>(Landroid/content/Context;)V

    const-string v2, " "

    .line 602
    invoke-virtual {v0, v2, v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 604
    new-instance v1, Lcom/android/settingslib/h$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settingslib/h$1;-><init>(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 612
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 614
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 5

    .line 663
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 664
    invoke-static {v0}, Lcom/android/settingslib/h;->a(Landroid/text/SpannableStringBuilder;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 666
    sget p2, Lcom/android/settingslib/e$c;->disabled_text_color:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 667
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, p2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 669
    invoke-static {p0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, v1, v1, p2, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 670
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settingslib/e$d;->restricted_icon_padding:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 675
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;)V
    .locals 8

    .line 618
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 619
    const-class v2, Lcom/android/settingslib/f;

    invoke-virtual {p0, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/settingslib/f;

    .line 621
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 622
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 623
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 624
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 625
    invoke-virtual {p0, v6, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 627
    :cond_0
    const-class v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v3, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 628
    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 629
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static synthetic a(IILandroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 0

    .line 155
    invoke-virtual {p2, p3, p4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p2

    if-eq p4, p0, :cond_0

    and-int/lit16 p2, p2, 0x1b0

    :cond_0
    and-int p0, p2, p1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic a(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 2

    .line 482
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2

    const-string v0, "device_policy"

    .line 634
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 636
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 637
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 638
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Lcom/android/settingslib/g$a;
    .locals 2

    const-string v0, "device_policy"

    .line 418
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_1

    .line 420
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object p0

    .line 424
    new-instance v0, Lcom/android/settingslib/g$a;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/g$a;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)Lcom/android/settingslib/g$a;
    .locals 3

    const-string v0, "device_policy"

    .line 294
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5565
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/android/settingslib/h;->i(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 303
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 304
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    return-object v1
.end method

.method private static synthetic b(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 0

    .line 438
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    const-string v0, "user"

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 134
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Lcom/android/settingslib/g$a;
    .locals 2

    .line 480
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sget-object v1, Lcom/android/settingslib/-$$Lambda$h$O8bUFkFdS-VHI13ZIaUGC6dpoBU;->INSTANCE:Lcom/android/settingslib/-$$Lambda$h$O8bUFkFdS-VHI13ZIaUGC6dpoBU;

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;ILcom/android/settingslib/h$a;)Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;I)Lcom/android/settingslib/g$a;
    .locals 6

    .line 436
    sget-object v0, Lcom/android/settingslib/-$$Lambda$h$kb_j1onl8SZUrDSS5UJiOsXxYo8;->INSTANCE:Lcom/android/settingslib/-$$Lambda$h$kb_j1onl8SZUrDSS5UJiOsXxYo8;

    const-string v1, "device_policy"

    .line 441
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 447
    :cond_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 9689
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 451
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    .line 456
    :cond_1
    invoke-static {p1}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 457
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 458
    invoke-interface {v0, v1, v4, p1}, Lcom/android/settingslib/h$a;->isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_3

    .line 460
    new-instance v2, Lcom/android/settingslib/g$a;

    invoke-direct {v2, v4, v3}, Lcom/android/settingslib/g$a;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 462
    :cond_3
    sget-object p0, Lcom/android/settingslib/g$a;->d:Lcom/android/settingslib/g$a;

    return-object p0

    :cond_4
    return-object v2

    .line 468
    :cond_5
    invoke-static {p0, p1, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;ILcom/android/settingslib/h$a;)Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;
    .locals 2

    const-string v0, "no_control_apps"

    .line 217
    invoke-static {p0, v0, p2}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "no_uninstall_apps"

    .line 222
    invoke-static {p0, v0, p2}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 227
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 229
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 230
    invoke-static {p2}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 2038
    invoke-static {p0, v1, p1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/g$a;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v1
.end method

.method private static d(Landroid/content/Context;I)I
    .locals 2

    const-string v0, "user"

    .line 343
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 344
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    .line 345
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 346
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, p1, :cond_0

    .line 349
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_1
    const/16 p0, -0x2710

    return p0
.end method

.method public static d(Landroid/content/Context;)Lcom/android/settingslib/g$a;
    .locals 1

    const/4 v0, 0x0

    .line 547
    invoke-static {p0, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;
    .locals 2

    .line 246
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 248
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    invoke-static {p2}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 3038
    invoke-static {p0, v1, p1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/g$a;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;
    .locals 6

    const-string v0, "device_policy"

    .line 259
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 264
    :cond_0
    invoke-static {p2}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 4038
    invoke-static {p0, v1, v2}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/g$a;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 267
    iget-object v4, v2, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v4, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    .line 270
    :goto_0
    invoke-static {p0, p2}, Lcom/android/settingslib/h;->d(Landroid/content/Context;I)I

    move-result p2

    .line 272
    invoke-static {p2}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 5038
    invoke-static {p0, v1, v5}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/g$a;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 275
    iget-object v3, p0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v3, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    :cond_2
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    .line 279
    sget-object p0, Lcom/android/settingslib/g$a;->d:Lcom/android/settingslib/g$a;

    return-object p0

    :cond_3
    if-nez v4, :cond_4

    return-object v2

    :cond_4
    if-nez v3, :cond_5

    return-object p0

    :cond_5
    return-object v1
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;
    .locals 6

    const-string v0, "device_policy"

    .line 313
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 318
    :cond_0
    invoke-static {p2}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 6038
    invoke-static {p0, v1, v2}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/g$a;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 321
    iget-object v4, v2, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v4, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    .line 324
    :goto_0
    invoke-static {p0, p2}, Lcom/android/settingslib/h;->d(Landroid/content/Context;I)I

    move-result p2

    .line 326
    invoke-static {p2}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 7038
    invoke-static {p0, v1, v5}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/g$a;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 329
    iget-object v3, p0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v3, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    :cond_2
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    .line 333
    sget-object p0, Lcom/android/settingslib/g$a;->d:Lcom/android/settingslib/g$a;

    return-object p0

    :cond_3
    if-nez v4, :cond_4

    return-object v2

    :cond_4
    if-nez v3, :cond_5

    return-object p0

    :cond_5
    return-object v1
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "device_policy"

    .line 369
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.device_admin"

    .line 372
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_1

    goto :goto_2

    .line 376
    :cond_1
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v1

    .line 377
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 378
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    return-object v0

    .line 386
    :cond_4
    invoke-static {p2}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 8038
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/g$a;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;
    .locals 3

    .line 399
    invoke-static {p2}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    .line 9038
    invoke-static {p0, v1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "device_policy"

    .line 404
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 406
    iget-object v2, v0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    invoke-virtual {p0, v2, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p2, v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "device_policy"

    .line 573
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_1

    return-object v0

    .line 578
    :cond_1
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 580
    new-instance v0, Lcom/android/settingslib/g$a;

    invoke-static {p2}, Lcom/android/settingslib/h;->a(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/g$a;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_2
    return-object v0
.end method

.method public static synthetic lambda$O8bUFkFdS-VHI13ZIaUGC6dpoBU(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/h;->a(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Oxml60pbIMI975skEIQbwQ_8jvs(IILandroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settingslib/h;->a(IILandroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$kb_j1onl8SZUrDSS5UJiOsXxYo8(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/h;->b(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method
