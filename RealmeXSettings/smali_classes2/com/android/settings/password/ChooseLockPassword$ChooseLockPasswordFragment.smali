.class public Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings/password/SaveChosenLockWorkerBase$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$b;,
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;
    }
.end annotation


# instance fields
.field private A:Lcom/android/internal/widget/LockPatternUtils;

.field private B:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

.field private C:I

.field private D:Lcom/android/settings/password/b;

.field private E:Lcom/android/settings/password/PasswordRequirementAdapter;

.field private F:Lcom/google/android/setupdesign/GlifLayout;

.field private G:[B

.field private H:Landroidx/recyclerview/widget/RecyclerView;

.field private I:Lcom/google/android/setupcompat/template/FooterButton;

.field private J:Landroid/widget/TextView;

.field private K:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$b;

.field protected a:I

.field protected b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Lcom/google/android/setupcompat/template/FooterButton;

.field private g:[B

.field private h:[B

.field private i:Z

.field private j:J

.field private k:Lcom/android/settings/widget/ImeAwareEditText;

.field private l:Lcom/android/internal/widget/TextViewInputDisabler;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private w:I

.field private x:Z

.field private y:I

.field private z:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 459
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x4

    .line 287
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->m:I

    const/16 v0, 0x10

    .line 288
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->n:I

    const/4 v0, 0x0

    .line 289
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    .line 290
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->p:I

    .line 291
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->q:I

    .line 292
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->r:I

    .line 293
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->s:I

    .line 294
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->t:I

    .line 295
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->w:I

    const/4 v1, 0x1

    .line 296
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->x:Z

    .line 297
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->y:I

    const/high16 v0, 0x20000

    .line 303
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->C:I

    .line 305
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->a:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    return-void
.end method

.method private a([B)I
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 813
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForPassword([B)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 814
    iget v1, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 4755
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->y:I

    const/high16 v3, 0x30000

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 4761
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->c()V

    .line 4763
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->y:I

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->C:I

    .line 4765
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->e()Z

    move-result v6

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->d()Z

    move-result v7

    .line 4763
    invoke-static {v2, v1, v5, v6, v7}, Landroid/app/admin/PasswordMetrics;->getMinimumMetrics(IIIZZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    .line 4766
    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->x:Z

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/app/admin/PasswordMetrics;->quality:I

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->x:Z

    .line 4768
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->m:I

    iget v6, v1, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->m:I

    .line 4769
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    iget v6, v1, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    .line 4770
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->p:I

    iget v6, v1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->p:I

    .line 4771
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->q:I

    iget v6, v1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->q:I

    .line 4772
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->s:I

    iget v6, v1, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->s:I

    .line 4773
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->r:I

    iget v6, v1, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->r:I

    .line 4774
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->t:I

    iget v6, v1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->t:I

    .line 4776
    iget v2, v1, Landroid/app/admin/PasswordMetrics;->quality:I

    const/high16 v6, 0x40000

    if-ne v2, v6, :cond_1

    .line 4777
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4778
    iput v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    .line 4781
    :cond_1
    iget v1, v1, Landroid/app/admin/PasswordMetrics;->quality:I

    const/high16 v2, 0x50000

    if-ne v1, v2, :cond_3

    .line 4782
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4783
    iput v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    .line 4785
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->e()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4786
    iput v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->s:I

    .line 4790
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->g()I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->w:I

    :cond_4
    if-eqz p1, :cond_9

    .line 816
    array-length v1, p1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->m:I

    if-ge v1, v2, :cond_5

    goto :goto_2

    .line 820
    :cond_5
    array-length v1, p1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->n:I

    if-le v1, v2, :cond_6

    const/4 v1, 0x4

    goto :goto_3

    .line 824
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->x:Z

    if-nez v1, :cond_7

    .line 825
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->d()Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    array-length v2, p1

    if-ne v1, v2, :cond_7

    .line 843
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence([B)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_7

    const/16 v1, 0x10

    goto :goto_1

    :cond_7
    move v1, v4

    .line 849
    :goto_1
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    .line 4899
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->z:[B

    if-nez v5, :cond_8

    .line 4900
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->g:[B

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHistoryHashFactor([BI)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->z:[B

    .line 4903
    :cond_8
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->z:[B

    .line 849
    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    invoke-virtual {v2, p1, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory([B[BI)Z

    move-result v2

    if-eqz v2, :cond_b

    or-int/lit8 v1, v1, 0x20

    goto :goto_3

    .line 817
    :cond_9
    :goto_2
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->m:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->w:I

    if-le v1, v2, :cond_a

    const/4 v1, 0x2

    goto :goto_3

    :cond_a
    move v1, v4

    .line 856
    :cond_b
    :goto_3
    array-length v2, p1

    if-ge v4, v2, :cond_e

    .line 857
    aget-byte v2, p1, v4

    int-to-char v2, v2

    const/16 v5, 0x20

    if-lt v2, v5, :cond_d

    const/16 v5, 0x7f

    if-le v2, v5, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    or-int/lit8 v1, v1, 0x1

    .line 866
    :cond_e
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->C:I

    const/high16 v2, 0x20000

    if-eq p1, v2, :cond_f

    if-ne p1, v3, :cond_11

    .line 868
    :cond_f
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-gtz p1, :cond_10

    iget p1, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-lez p1, :cond_11

    :cond_10
    or-int/lit8 v1, v1, 0x8

    .line 873
    :cond_11
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    if-ge p1, v2, :cond_12

    or-int/lit8 v1, v1, 0x40

    .line 876
    :cond_12
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->p:I

    if-ge p1, v2, :cond_13

    or-int/lit16 v1, v1, 0x80

    .line 879
    :cond_13
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->q:I

    if-ge p1, v2, :cond_14

    or-int/lit16 v1, v1, 0x100

    .line 882
    :cond_14
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->r:I

    if-ge p1, v2, :cond_15

    or-int/lit16 v1, v1, 0x400

    .line 885
    :cond_15
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->s:I

    if-ge p1, v2, :cond_16

    or-int/lit16 v1, v1, 0x200

    .line 888
    :cond_16
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->t:I

    if-ge p1, v0, :cond_17

    or-int/lit16 v1, v1, 0x800

    :cond_17
    return v1
.end method

.method private a(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    .line 679
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    .line 680
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b()V

    if-eq v0, p1, :cond_0

    .line 685
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->F:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->I:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Z)V

    return-void
.end method

.method private c()V
    .locals 5

    .line 693
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x30000

    if-ne v0, v2, :cond_0

    .line 695
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->x:Z

    :cond_0
    const/4 v2, 0x4

    .line 697
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    .line 698
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v3

    .line 697
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->m:I

    .line 699
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->C:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumPasswordLength(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->n:I

    .line 700
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    .line 701
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->p:I

    .line 702
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->q:I

    .line 703
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->s:I

    .line 704
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->r:I

    .line 705
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->t:I

    const/high16 v2, 0x40000

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    const/high16 v2, 0x50000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_4

    .line 726
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->s:I

    .line 727
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    .line 728
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->p:I

    .line 729
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->q:I

    .line 730
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->r:I

    .line 731
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->t:I

    goto :goto_0

    .line 715
    :cond_1
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    if-nez v0, :cond_2

    .line 716
    iput v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    .line 718
    :cond_2
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->s:I

    if-nez v0, :cond_4

    .line 719
    iput v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->s:I

    goto :goto_0

    .line 710
    :cond_3
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    if-nez v0, :cond_4

    .line 711
    iput v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    .line 734
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->g()I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->w:I

    return-void
.end method

.method private d()Z
    .locals 2

    .line 796
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->r:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->t:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .locals 1

    .line 801
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->s:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()V
    .locals 13

    .line 907
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->B:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->h:[B

    .line 910
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->h:[B

    if-eqz v0, :cond_7

    array-length v0, v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->a:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 914
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->h:[B

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a([B)I

    move-result v0

    if-nez v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->h:[B

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->G:[B

    .line 916
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 917
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;)V

    return-void

    .line 919
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    return-void

    .line 921
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    if-ne v0, v1, :cond_7

    .line 922
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->G:[B

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5104
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->B:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_4

    const-string v0, "ChooseLockPassword"

    const-string v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    .line 5105
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5109
    :cond_4
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->l:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 5110
    invoke-direct {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a(Z)V

    .line 5112
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->B:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    .line 5113
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->B:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    .line 5115
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->B:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const-string v2, "save_and_finish_worker"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 5116
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 5117
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 5119
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "extra_require_password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 5121
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->B:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->i:Z

    iget-wide v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->j:J

    iget-object v9, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->h:[B

    iget-object v10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->g:[B

    iget v11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->C:I

    iget v12, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    invoke-virtual/range {v3 .. v12}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->a(Lcom/android/internal/widget/LockPatternUtils;ZZJ[B[BII)V

    return-void

    .line 925
    :cond_5
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 927
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 929
    :cond_6
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->c:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;)V

    .line 930
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    :cond_7
    :goto_0
    return-void
.end method

.method private g()I
    .locals 4

    .line 1031
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->p:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->q:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1033
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->t:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->r:I

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->s:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 611
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 674
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    invoke-static {p1, v0}, Lcom/android/settings/notification/RedactionInterstitial;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    .line 944
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(ZLandroid/content/Intent;)V
    .locals 2

    .line 1127
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 1129
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->h:[B

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1130
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 1132
    :cond_0
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->g:[B

    if-eqz p2, :cond_1

    .line 1133
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 1135
    :cond_1
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->G:[B

    if-eqz p2, :cond_2

    .line 1136
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 1139
    :cond_2
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_3

    .line 1142
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1144
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 1147
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1088
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->c:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    if-ne p1, v0, :cond_0

    .line 1089
    sget-object p1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    .line 1092
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->K:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$b;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$b;->a(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$b;)V

    return-void
.end method

.method protected b()V
    .locals 11

    .line 1042
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->B:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1043
    :goto_0
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v3}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v3

    .line 1044
    array-length v4, v3

    .line 1045
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->a:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    if-ne v5, v6, :cond_11

    .line 1046
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->H:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1047
    invoke-direct {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a([B)I

    move-result v4

    .line 5967
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v6, v4, 0x1

    if-lez v6, :cond_1

    const v6, 0x7f120ca9

    .line 5969
    invoke-virtual {p0, v6}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v6, v4, 0x8

    if-lez v6, :cond_2

    const v6, 0x7f120cba

    .line 5972
    invoke-virtual {p0, v6}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit16 v6, v4, 0x80

    if-lez v6, :cond_3

    .line 5975
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100026

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->p:I

    new-array v9, v1, [Ljava/lang/Object;

    .line 5977
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 5975
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit16 v6, v4, 0x100

    if-lez v6, :cond_4

    .line 5980
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100022

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->q:I

    new-array v9, v1, [Ljava/lang/Object;

    .line 5982
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 5980
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v6, v4, 0x40

    if-lez v6, :cond_5

    .line 5985
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100021

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->o:I

    new-array v9, v1, [Ljava/lang/Object;

    .line 5987
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 5985
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit16 v6, v4, 0x200

    if-lez v6, :cond_6

    .line 5990
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100024

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->s:I

    new-array v9, v1, [Ljava/lang/Object;

    .line 5992
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 5990
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit16 v6, v4, 0x400

    if-lez v6, :cond_7

    .line 5995
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100025

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->r:I

    new-array v9, v1, [Ljava/lang/Object;

    .line 5997
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 5995
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit16 v6, v4, 0x800

    if-lez v6, :cond_8

    .line 6000
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100023

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->t:I

    new-array v9, v1, [Ljava/lang/Object;

    .line 6002
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 6000
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    and-int/lit8 v6, v4, 0x2

    if-lez v6, :cond_a

    .line 6005
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->e:Z

    if-eqz v7, :cond_9

    const v7, 0x7f100028

    goto :goto_1

    :cond_9
    const v7, 0x7f10002a

    :goto_1
    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->m:I

    new-array v9, v1, [Ljava/lang/Object;

    .line 6010
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 6005
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    and-int/lit8 v6, v4, 0x4

    if-lez v6, :cond_c

    .line 6013
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->e:Z

    if-eqz v7, :cond_b

    const v7, 0x7f100027

    goto :goto_2

    :cond_b
    const v7, 0x7f100029

    :goto_2
    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->n:I

    add-int/lit8 v9, v8, 0x1

    new-array v10, v1, [Ljava/lang/Object;

    add-int/2addr v8, v1

    .line 6018
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v2

    .line 6013
    invoke-virtual {v6, v7, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    and-int/lit8 v6, v4, 0x10

    if-lez v6, :cond_d

    const v6, 0x7f120cbb

    .line 6021
    invoke-virtual {p0, v6}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    and-int/lit8 v6, v4, 0x20

    if-lez v6, :cond_f

    .line 6024
    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->e:Z

    if-eqz v6, :cond_e

    const v6, 0x7f120cb1

    goto :goto_3

    :cond_e
    const v6, 0x7f120cbc

    :goto_3
    invoke-virtual {p0, v6}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6027
    :cond_f
    new-array v6, v2, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1050
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->E:Lcom/android/settings/password/PasswordRequirementAdapter;

    .line 6053
    iput-object v5, v6, Lcom/android/settings/password/PasswordRequirementAdapter;->a:[Ljava/lang/String;

    .line 6054
    invoke-virtual {v6}, Lcom/android/settings/password/PasswordRequirementAdapter;->notifyDataSetChanged()V

    if-nez v4, :cond_10

    goto :goto_4

    :cond_10
    move v1, v2

    .line 1052
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a(Z)V

    goto :goto_7

    .line 1055
    :cond_11
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->H:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1056
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    iget-boolean v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->e:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->a(ZI)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6079
    iget-object v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->F:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v7}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->F:Lcom/google/android/setupdesign/GlifLayout;

    .line 6080
    invoke-virtual {v7}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 6083
    :cond_12
    iget-object v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->F:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v7, v5}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    :cond_13
    if-eqz v0, :cond_14

    .line 1057
    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->m:I

    if-lt v4, v5, :cond_14

    move v5, v1

    goto :goto_5

    :cond_14
    move v5, v2

    :goto_5
    invoke-direct {p0, v5}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a(Z)V

    .line 1058
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->f:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v0, :cond_15

    if-lez v4, :cond_15

    goto :goto_6

    :cond_15
    move v1, v2

    :goto_6
    if-eqz v1, :cond_16

    move v6, v2

    :cond_16
    invoke-virtual {v5, v6}, Lcom/google/android/setupcompat/template/FooterButton;->a(I)V

    .line 1060
    :goto_7
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->e:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a()I

    move-result v5

    if-eqz v4, :cond_18

    if-eqz v5, :cond_17

    .line 7451
    iget v1, v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->k:I

    goto :goto_8

    :cond_17
    iget v1, v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->j:I

    goto :goto_8

    :cond_18
    if-eqz v5, :cond_19

    .line 7453
    iget v1, v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->m:I

    goto :goto_8

    :cond_19
    iget v1, v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->l:I

    :goto_8
    if-eqz v1, :cond_1a

    .line 1062
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->J:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1063
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->J:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 1065
    :cond_1a
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->J:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1068
    :goto_9
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    iget v1, v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->n:I

    .line 7940
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->I:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Landroid/content/Context;I)V

    .line 1069
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->l:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 1070
    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 0

    .line 948
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->f()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 659
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 664
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :cond_1
    const-string p1, "password"

    .line 666
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->g:[B

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 465
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 466
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ChooseLockPassword;

    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    const/4 v0, 0x0

    const-string v1, "for_fingerprint"

    .line 473
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->c:Z

    const-string v1, "for_face"

    .line 475
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->d:Z

    const-string v1, "requested_min_complexity"

    .line 476
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->y:I

    .line 478
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->C:I

    const-string v2, "lockscreen.password_type"

    .line 479
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->A:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    .line 480
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v2

    .line 478
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->C:I

    .line 482
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->c()V

    .line 483
    new-instance v1, Lcom/android/settings/password/b;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->D:Lcom/android/settings/password/b;

    const-string v1, "for_cred_req_boot"

    .line 485
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v1}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "extra_require_password"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "password"

    .line 490
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v8

    .line 1169
    iput-boolean v2, v1, Lcom/android/settings/password/SaveChosenLockWorkerBase;->h:Z

    .line 494
    invoke-virtual {v1, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    .line 495
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->D:Lcom/android/settings/password/b;

    invoke-virtual {p1}, Lcom/android/settings/password/b;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget v9, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->C:I

    iget v10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    move-object v7, v8

    invoke-virtual/range {v1 .. v10}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->a(Lcom/android/internal/widget/LockPatternUtils;ZZJ[B[BII)V

    .line 498
    :cond_0
    new-instance p1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$b;

    invoke-direct {p1, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$b;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->K:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$b;

    return-void

    .line 469
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Fragment contained in wrong activity"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0062

    const/4 v0, 0x0

    .line 504
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 956
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->f()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->B:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 643
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    .line 645
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 630
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 631
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;)V

    .line 632
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->B:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    .line 636
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 650
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 651
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ui_stage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->G:[B

    const-string v1, "first_pin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 653
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->g:[B

    const-string v1, "current_password"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 509
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 511
    move-object v0, p1

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->F:Lcom/google/android/setupdesign/GlifLayout;

    const v0, 0x7f0a04b9

    .line 515
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 516
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOpticalInsets(Landroid/graphics/Insets;)V

    .line 518
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->F:Lcom/google/android/setupdesign/GlifLayout;

    const-class v1, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/a;

    .line 519
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$a;

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120c93

    .line 521
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v1

    new-instance v2, Lcom/android/settings/password/-$$Lambda$XRUIHqVxEBm7hKBgu4t8FRCuV1o;

    invoke-direct {v2, p0}, Lcom/android/settings/password/-$$Lambda$XRUIHqVxEBm7hKBgu4t8FRCuV1o;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 1347
    iput-object v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v2, 0x7

    .line 1353
    iput v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v2, 0x7f13027f

    .line 1359
    iput v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 525
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 519
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 527
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$a;

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120e37

    .line 529
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v1

    new-instance v2, Lcom/android/settings/password/-$$Lambda$Nx4q6OrJyGNm3bRR4b9vKN4uEW4;

    invoke-direct {v2, p0}, Lcom/android/settings/password/-$$Lambda$Nx4q6OrJyGNm3bRR4b9vKN4uEW4;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 2347
    iput-object v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v2, 0x5

    .line 2353
    iput v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v2, 0x7f13027e

    .line 2359
    iput v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 533
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 527
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 3350
    iget-object v1, v0, Lcom/google/android/setupcompat/template/a;->c:Lcom/google/android/setupcompat/template/FooterButton;

    .line 535
    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->f:Lcom/google/android/setupcompat/template/FooterButton;

    .line 4273
    iget-object v0, v0, Lcom/google/android/setupcompat/template/a;->b:Lcom/google/android/setupcompat/template/FooterButton;

    .line 536
    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->I:Lcom/google/android/setupcompat/template/FooterButton;

    const v0, 0x7f0a067a

    .line 538
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->J:Landroid/widget/TextView;

    .line 539
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->c:Z

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->F:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0806e7

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 541
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->d:Z

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->F:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0806dd

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    const/high16 v0, 0x40000

    .line 545
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->C:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/high16 v0, 0x50000

    if-eq v0, v1, :cond_3

    const/high16 v0, 0x60000

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->e:Z

    const v0, 0x7f0a04be

    .line 4617
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->H:Landroidx/recyclerview/widget/RecyclerView;

    .line 4618
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->H:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4619
    new-instance v0, Lcom/android/settings/password/PasswordRequirementAdapter;

    invoke-direct {v0}, Lcom/android/settings/password/PasswordRequirementAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->E:Lcom/android/settings/password/PasswordRequirementAdapter;

    .line 4620
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->H:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->E:Lcom/android/settings/password/PasswordRequirementAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->H:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f0a04ba

    .line 552
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ImeAwareEditText;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    .line 553
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 554
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 555
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p1}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    .line 556
    new-instance p1, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->l:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 560
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->getInputType()I

    move-result v0

    .line 561
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->e:Z

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/16 v0, 0x12

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ImeAwareEditText;->setInputType(I)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->k:Lcom/android/settings/widget/ImeAwareEditText;

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.android.internal.R.string.config_headlineFontFamily"

    invoke-static {v4}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 568
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "confirm_credentials"

    .line 569
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "password"

    .line 571
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->g:[B

    const-string v4, "has_challenge"

    .line 573
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->i:Z

    const-wide/16 v4, 0x0

    const-string v2, "challenge"

    .line 575
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->j:J

    if-nez p2, :cond_5

    .line 577
    sget-object p2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->a:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    invoke-direct {p0, p2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;)V

    if-eqz v1, :cond_8

    .line 579
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->D:Lcom/android/settings/password/b;

    const/16 v0, 0x3a

    const v1, 0x7f12177e

    .line 580
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a:I

    .line 579
    invoke-virtual {p2, v0, v1, v3, v2}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;ZI)Z

    goto :goto_4

    :cond_5
    const-string v0, "first_pin"

    .line 586
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->G:[B

    const-string v0, "ui_stage"

    .line 587
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 589
    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    .line 590
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;)V

    .line 593
    :cond_6
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->g:[B

    if-nez v0, :cond_7

    const-string v0, "current_password"

    .line 594
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->g:[B

    .line 598
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "save_and_finish_worker"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    iput-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->B:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    .line 602
    :cond_8
    :goto_4
    instance-of p2, p1, Lcom/android/settings/SettingsActivity;

    if-eqz p2, :cond_9

    .line 603
    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 604
    sget-object p2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->a:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->e:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->a(ZI)I

    move-result p2

    .line 605
    invoke-virtual {p1, p2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 606
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->F:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    :cond_9
    return-void
.end method
