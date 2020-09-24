.class public final Lcom/android/settings/wifi/qrcode/c;
.super Lcom/google/c/i;
.source "QrYuvLuminanceSource.java"


# instance fields
.field a:[B

.field b:I

.field c:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 31
    invoke-direct {p0, p2, p3}, Lcom/google/c/i;-><init>(II)V

    .line 33
    iput p2, p0, Lcom/android/settings/wifi/qrcode/c;->b:I

    .line 34
    iput p3, p0, Lcom/android/settings/wifi/qrcode/c;->c:I

    .line 35
    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/c;->a:[B

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/c;->a:[B

    return-object v0
.end method

.method public final a(I[B)[B
    .locals 3

    if-ltz p1, :cond_2

    .line 61
    iget v0, p0, Lcom/android/settings/wifi/qrcode/c;->c:I

    if-ge p1, v0, :cond_2

    if-eqz p2, :cond_0

    .line 64
    array-length v0, p2

    iget v1, p0, Lcom/android/settings/wifi/qrcode/c;->b:I

    if-ge v0, v1, :cond_1

    .line 65
    :cond_0
    iget p2, p0, Lcom/android/settings/wifi/qrcode/c;->b:I

    new-array p2, p2, [B

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/c;->a:[B

    iget v1, p0, Lcom/android/settings/wifi/qrcode/c;->b:I

    mul-int/2addr p1, v1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object p2

    .line 62
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Requested row is outside the image: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
