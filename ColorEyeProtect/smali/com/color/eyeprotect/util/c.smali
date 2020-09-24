.class public Lcom/color/eyeprotect/util/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static final c:[F

.field private static final d:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/color/eyeprotect/util/c;->a:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/color/eyeprotect/util/c;->b:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/color/eyeprotect/util/c;->c:[F

    sget-object v0, Lcom/color/eyeprotect/util/c;->a:[F

    sget-object v1, Lcom/color/eyeprotect/util/c;->b:[F

    invoke-static {v0, v1}, Lcom/color/eyeprotect/util/c;->a([F[F)[F

    move-result-object v0

    sput-object v0, Lcom/color/eyeprotect/util/c;->d:[F

    return-void

    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x425719f8    # -0.08247f
        -0x425719f8    # -0.08247f
        -0x425719f8    # -0.08247f
        0x0
        -0x425719f8    # -0.08247f
        -0x425719f8    # -0.08247f
        -0x425719f8    # -0.08247f
        0x0
        -0x425719f8    # -0.08247f
        -0x425719f8    # -0.08247f
        -0x425719f8    # -0.08247f
        0x0
        0x3ea1de6a    # 0.31615f
        0x3ea1de6a    # 0.31615f
        0x3ea1de6a    # 0.31615f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static a(IIILandroid/content/Context;I)V
    .locals 7

    const/16 v0, 0x10

    new-array v1, v0, [F

    const/4 v1, 0x0

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/color/eyeprotect/util/c;->a:[F

    :goto_0
    :pswitch_1
    new-array p4, v0, [F

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    array-length v4, p4

    if-ge v3, v4, :cond_3

    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    int-to-float v6, p0

    mul-float/2addr v6, v5

    div-float/2addr v6, v4

    aput v6, p4, v3

    goto :goto_2

    :cond_0
    const/4 v6, 0x5

    if-ne v3, v6, :cond_1

    int-to-float v6, p1

    mul-float/2addr v6, v5

    div-float/2addr v6, v4

    aput v6, p4, v3

    goto :goto_2

    :cond_1
    const/16 v6, 0xa

    if-ne v3, v6, :cond_2

    int-to-float v6, p2

    mul-float/2addr v6, v5

    div-float/2addr v6, v4

    aput v6, p4, v3

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/color/eyeprotect/util/c;->c:[F

    aget v4, v4, v3

    aput v4, p4, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p4, v1}, Lcom/color/eyeprotect/util/c;->a([F[F)[F

    move-result-object p0

    :goto_3
    array-length p1, p0

    if-ge v2, p1, :cond_5

    aget p1, p0, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    if-eq v2, p1, :cond_4

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "color_dispaly_adjust"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x2

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "color_dispaly_adjust"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private static a([F[F)[F
    .locals 7

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-object v0
.end method
