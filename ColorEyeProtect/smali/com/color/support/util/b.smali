.class public Lcom/color/support/util/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/color/support/util/b;->a:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3fa00000    # 1.25f
        0x3fb9999a    # 1.45f
        0x3fd33333    # 1.65f
    .end array-data
.end method

.method public static a(FFI)F
    .locals 2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    return p0

    :cond_0
    sget-object v0, Lcom/color/support/util/b;->a:[F

    array-length v0, v0

    if-le p2, v0, :cond_1

    sget-object p2, Lcom/color/support/util/b;->a:[F

    array-length p2, p2

    :cond_1
    div-float/2addr p0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f8ccccd    # 1.1f

    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/color/support/util/b;->a:[F

    add-int/lit8 p2, p2, -0x1

    aget v0, v0, p2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    sget-object p1, Lcom/color/support/util/b;->a:[F

    aget p1, p1, p2

    :goto_0
    mul-float/2addr p0, p1

    return p0

    :pswitch_0
    cmpg-float p2, p1, v1

    if-gez p2, :cond_2

    mul-float/2addr p0, v0

    return p0

    :cond_2
    const p2, 0x3fb9999a    # 1.45f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    mul-float/2addr p0, v1

    return p0

    :cond_3
    const/high16 p1, 0x3fa00000    # 1.25f

    goto :goto_0

    :pswitch_1
    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    mul-float/2addr p0, v0

    return p0

    :cond_4
    mul-float/2addr p0, v1

    return p0

    :cond_5
    mul-float/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/graphics/Paint;Z)V
    .locals 2

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/color/support/util/g;->a()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "sans-serif-medium"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2
    :goto_1
    return-void
.end method
