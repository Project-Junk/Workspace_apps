.class public Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "Utf8ByteLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->a:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 15

    move-object/from16 v0, p1

    move/from16 v1, p3

    const/4 v2, 0x0

    move/from16 v3, p2

    move v4, v2

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x800

    const/16 v8, 0x80

    const/4 v9, 0x1

    if-ge v3, v1, :cond_2

    .line 55
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ge v10, v8, :cond_0

    goto :goto_1

    :cond_0
    if-ge v10, v7, :cond_1

    move v9, v5

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    add-int/2addr v4, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_2
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v3

    move v10, v2

    :goto_2
    if-ge v2, v3, :cond_7

    move/from16 v11, p5

    if-lt v2, v11, :cond_4

    move/from16 v12, p6

    if-lt v2, v12, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v13, p4

    goto :goto_5

    :cond_4
    move/from16 v12, p6

    :goto_3
    move-object/from16 v13, p4

    .line 63
    invoke-interface {v13, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    if-ge v14, v8, :cond_5

    move v14, v9

    goto :goto_4

    :cond_5
    if-ge v14, v7, :cond_6

    move v14, v5

    goto :goto_4

    :cond_6
    move v14, v6

    :goto_4
    add-int/2addr v10, v14

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move-object v2, p0

    .line 67
    iget v3, v2, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->a:I

    sub-int/2addr v3, v10

    if-gtz v3, :cond_8

    const-string v0, ""

    return-object v0

    :cond_8
    const/4 v10, 0x0

    if-lt v3, v4, :cond_9

    return-object v10

    :cond_9
    move v4, v3

    move/from16 v3, p2

    :goto_6
    if-ge v3, v1, :cond_d

    .line 75
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ge v11, v8, :cond_a

    move v11, v9

    goto :goto_7

    :cond_a
    if-ge v11, v7, :cond_b

    move v11, v5

    goto :goto_7

    :cond_b
    move v11, v6

    :goto_7
    sub-int/2addr v4, v11

    if-gez v4, :cond_c

    move/from16 v11, p2

    .line 78
    invoke-interface {v0, v11, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_c
    move/from16 v11, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    return-object v10
.end method
