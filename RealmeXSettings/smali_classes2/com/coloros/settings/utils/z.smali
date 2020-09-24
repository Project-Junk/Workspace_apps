.class public final Lcom/coloros/settings/utils/z;
.super Ljava/lang/Object;
.source "LockSettingsHelper.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 45
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    .line 48
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 49
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result p0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isPasswordRepeated mode="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isLockPasswordEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsHelper"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 59
    sget-object p0, Lcom/coloros/settings/utils/z;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    if-le v2, p1, :cond_0

    return v1

    .line 73
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr p1, v3

    if-nez p1, :cond_1

    move p1, v1

    :goto_0
    add-int/lit8 v3, v2, -0x2

    if-gt p1, v3, :cond_4

    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_5

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x39

    if-gt v3, v5, :cond_5

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v4, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v3, v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_1
    add-int/lit8 v6, v2, -0x2

    if-gt v3, v6, :cond_4

    add-int/lit8 v6, v3, 0x1

    .line 87
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v4, :cond_5

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v7, v5, :cond_5

    .line 88
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int/2addr v3, v7

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v6

    goto :goto_1

    :cond_4
    move v1, v0

    :cond_5
    :goto_2
    return v1
.end method
