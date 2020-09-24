.class public final Lcom/android/settings/password/a;
.super Ljava/lang/Object;
.source "ChooseLockGenericController.java"


# instance fields
.field final a:Landroid/content/Context;

.field private final b:I

.field private final c:I

.field private d:Lcom/android/settings/password/d;

.field private e:Landroid/app/admin/DevicePolicyManager;

.field private final f:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 50
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/settings/password/a;-><init>(Landroid/content/Context;IILcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/d;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/settings/password/a;->a:Landroid/content/Context;

    .line 81
    iput p2, p0, Lcom/android/settings/password/a;->b:I

    .line 82
    iput p3, p0, Lcom/android/settings/password/a;->c:I

    .line 83
    iput-object p5, p0, Lcom/android/settings/password/a;->d:Lcom/android/settings/password/d;

    .line 84
    iput-object p4, p0, Lcom/android/settings/password/a;->e:Landroid/app/admin/DevicePolicyManager;

    .line 85
    iput-object p6, p0, Lcom/android/settings/password/a;->f:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/internal/widget/LockPatternUtils;)V
    .locals 8

    .line 63
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 68
    invoke-static {}, Lcom/android/settings/password/d;->a()Lcom/android/settings/password/d;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    .line 63
    invoke-direct/range {v1 .. v7}, Lcom/android/settings/password/a;-><init>(Landroid/content/Context;IILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/d;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/android/settings/password/a;->e:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/password/a;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 96
    iget v0, p0, Lcom/android/settings/password/a;->c:I

    .line 97
    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->complexityLevelToMinQuality(I)I

    move-result v0

    .line 96
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final a()Ljava/util/List;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/password/f;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x10000

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/settings/password/a;->a(I)I

    move-result v0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-static {}, Lcom/android/settings/password/f;->values()[Lcom/android/settings/password/f;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 1104
    iget v7, p0, Lcom/android/settings/password/a;->b:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/4 v9, 0x1

    if-eq v7, v8, :cond_0

    move v7, v9

    goto :goto_1

    :cond_0
    move v7, v4

    .line 1105
    :goto_1
    sget-object v8, Lcom/android/settings/password/a$1;->a:[I

    invoke-virtual {v6}, Lcom/android/settings/password/f;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_0

    goto :goto_3

    .line 1119
    :pswitch_0
    iget-object v7, p0, Lcom/android/settings/password/a;->f:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v7

    goto :goto_4

    :cond_1
    :goto_2
    :pswitch_1
    move v7, v4

    goto :goto_4

    .line 1110
    :pswitch_2
    iget-object v8, p0, Lcom/android/settings/password/a;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f050012

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v7, :cond_2

    goto :goto_2

    .line 1107
    :pswitch_3
    iget-object v8, p0, Lcom/android/settings/password/a;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f050011

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    :goto_3
    move v7, v9

    :goto_4
    if-eqz v7, :cond_4

    .line 1132
    iget v7, v6, Lcom/android/settings/password/f;->h:I

    if-lt v7, v0, :cond_3

    goto :goto_5

    :cond_3
    move v9, v4

    :goto_5
    if-eqz v9, :cond_4

    .line 189
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
