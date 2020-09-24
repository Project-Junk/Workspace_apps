.class public final Lcom/android/settings/biometrics/face/c;
.super Ljava/lang/Object;
.source "ParticleCollection.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/face/c$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/biometrics/face/a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/android/settings/biometrics/face/c$a;

.field private d:I

.field private final e:Lcom/android/settings/biometrics/face/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/c$a;Landroid/graphics/Rect;)V
    .locals 11

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/biometrics/face/c$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/c$1;-><init>(Lcom/android/settings/biometrics/face/c;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/c;->e:Lcom/android/settings/biometrics/face/a$a;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/c;->a:Ljava/util/List;

    .line 77
    iput-object p2, p0, Lcom/android/settings/biometrics/face/c;->c:Lcom/android/settings/biometrics/face/c$a;

    .line 79
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601ee

    .line 82
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0601ef

    .line 83
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0601f0

    .line 84
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0601f1

    .line 85
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v1, v7

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/c;->b:Ljava/util/List;

    const/16 v0, 0xc

    .line 92
    new-array v8, v0, [I

    fill-array-data v8, :array_0

    move v9, v2

    :goto_0
    if-ge v9, v0, :cond_1

    .line 95
    new-instance v10, Lcom/android/settings/biometrics/face/a;

    iget-object v3, p0, Lcom/android/settings/biometrics/face/c;->e:Lcom/android/settings/biometrics/face/a$a;

    aget v5, v8, v9

    move-object v1, v10

    move-object v2, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/biometrics/face/a;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/a$a;Landroid/graphics/Rect;ILjava/util/List;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/biometrics/face/c;->b:Ljava/util/List;

    aget v2, v8, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43f00000    # 480.0f

    .line 1114
    iput v1, v10, Lcom/android/settings/biometrics/face/a;->p:F

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/c;->a:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings/biometrics/face/c;->b(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x7
        0xb
        0x2
        0x6
        0xa
        0x1
        0x5
        0x9
        0x0
        0x4
        0x8
    .end array-data
.end method

.method private b(I)V
    .locals 4

    .line 119
    iget v0, p0, Lcom/android/settings/biometrics/face/c;->d:I

    if-eq v0, p1, :cond_3

    const/4 v0, 0x0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/android/settings/biometrics/face/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/face/a;

    .line 2100
    iget v2, v1, Lcom/android/settings/biometrics/face/a;->k:I

    if-ne v2, p1, :cond_0

    .line 2101
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Already in state "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimationParticle"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 2105
    iget-object v2, v1, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2107
    :cond_1
    iget v2, v1, Lcom/android/settings/biometrics/face/a;->k:I

    iput v2, v1, Lcom/android/settings/biometrics/face/a;->j:I

    .line 2108
    iput p1, v1, Lcom/android/settings/biometrics/face/a;->k:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_2
    iput p1, p0, Lcom/android/settings/biometrics/face/c;->d:I

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(II)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x4

    .line 140
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/c;->b(I)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
