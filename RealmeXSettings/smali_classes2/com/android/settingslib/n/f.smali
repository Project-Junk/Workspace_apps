.class public abstract Lcom/android/settingslib/n/f;
.super Ljava/lang/Object;
.source "MediaDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/n/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field protected b:Landroid/content/Context;

.field protected c:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p2, p0, Lcom/android/settingslib/n/f;->c:I

    .line 50
    iput-object p1, p0, Lcom/android/settingslib/n/f;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Landroid/graphics/drawable/Drawable;
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 30
    check-cast p1, Lcom/android/settingslib/n/f;

    .line 1134
    invoke-virtual {p0}, Lcom/android/settingslib/n/f;->h()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/settingslib/n/f;->h()Z

    move-result v1

    xor-int/2addr v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1135
    invoke-virtual {p0}, Lcom/android/settingslib/n/f;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 1143
    :cond_1
    iget v0, p0, Lcom/android/settingslib/n/f;->c:I

    if-ne v0, v2, :cond_2

    return v1

    .line 1145
    :cond_2
    iget v0, p1, Lcom/android/settingslib/n/f;->c:I

    if-ne v0, v2, :cond_3

    return v2

    .line 1149
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/n/f;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 1151
    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/n/f;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 1155
    :cond_5
    invoke-static {}, Lcom/android/settingslib/n/c;->a()Lcom/android/settingslib/n/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/n/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-virtual {p0}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    .line 1158
    :cond_6
    invoke-virtual {p1}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 1162
    :cond_7
    iget v0, p0, Lcom/android/settingslib/n/f;->a:I

    iget v1, p1, Lcom/android/settingslib/n/f;->a:I

    if-eq v0, v1, :cond_9

    if-gtz v1, :cond_8

    if-lez v0, :cond_9

    .line 1164
    :cond_8
    iget p1, p1, Lcom/android/settingslib/n/f;->a:I

    iget v0, p0, Lcom/android/settingslib/n/f;->a:I

    sub-int/2addr p1, v0

    return p1

    .line 1168
    :cond_9
    iget v0, p0, Lcom/android/settingslib/n/f;->c:I

    iget v1, p1, Lcom/android/settingslib/n/f;->c:I

    if-ne v0, v1, :cond_a

    .line 1169
    invoke-virtual {p0}, Lcom/android/settingslib/n/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-virtual {p1}, Lcom/android/settingslib/n/f;->a()Ljava/lang/String;

    move-result-object p1

    .line 1171
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_a
    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 187
    instance-of v0, p1, Lcom/android/settingslib/n/f;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 190
    :cond_0
    check-cast p1, Lcom/android/settingslib/n/f;

    .line 191
    invoke-virtual {p1}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract f()V
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract h()Z
.end method

.method final i()V
    .locals 3

    .line 54
    invoke-static {}, Lcom/android/settingslib/n/c;->a()Lcom/android/settingslib/n/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/n/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/n/c;->a(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/android/settingslib/n/c;->a()Lcom/android/settingslib/n/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/n/f;->b:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/n/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/n/f;->a:I

    return-void
.end method

.method final j()V
    .locals 4

    .line 94
    iget v0, p0, Lcom/android/settingslib/n/f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingslib/n/f;->a:I

    .line 95
    invoke-static {}, Lcom/android/settingslib/n/c;->a()Lcom/android/settingslib/n/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/n/f;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settingslib/n/f;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/n/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
