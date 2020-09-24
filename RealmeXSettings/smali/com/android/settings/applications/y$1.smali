.class final Lcom/android/settings/applications/y$1;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/y$d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/y;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/y;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/applications/y$1;->a:Lcom/android/settings/applications/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .line 144
    check-cast p1, Lcom/android/settings/applications/y$d;

    check-cast p2, Lcom/android/settings/applications/y$d;

    .line 1152
    iget v0, p1, Lcom/android/settings/applications/y$d;->b:I

    iget v1, p2, Lcom/android/settings/applications/y$d;->b:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    .line 1153
    iget v0, p1, Lcom/android/settings/applications/y$d;->b:I

    iget-object v1, p0, Lcom/android/settings/applications/y$1;->a:Lcom/android/settings/applications/y;

    iget v1, v1, Lcom/android/settings/applications/y;->g:I

    if-ne v0, v1, :cond_0

    return v2

    .line 1154
    :cond_0
    iget v0, p2, Lcom/android/settings/applications/y$d;->b:I

    iget-object v1, p0, Lcom/android/settings/applications/y$1;->a:Lcom/android/settings/applications/y;

    iget v1, v1, Lcom/android/settings/applications/y;->g:I

    if-ne v0, v1, :cond_1

    return v3

    .line 1155
    :cond_1
    iget p1, p1, Lcom/android/settings/applications/y$d;->b:I

    iget p2, p2, Lcom/android/settings/applications/y$d;->b:I

    if-ge p1, p2, :cond_2

    return v2

    :cond_2
    return v3

    .line 1157
    :cond_3
    iget-object v0, p1, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object v1, p2, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    const/4 v4, 0x0

    if-ne v0, v1, :cond_6

    .line 1158
    iget-object v0, p1, Lcom/android/settings/applications/y$d;->e:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/applications/y$d;->e:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    return v4

    .line 1161
    :cond_4
    iget-object v0, p1, Lcom/android/settings/applications/y$d;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/android/settings/applications/y$d;->e:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/applications/y$d;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_5
    return v2

    .line 1163
    :cond_6
    iget-object v0, p1, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    if-nez v0, :cond_7

    return v2

    .line 1164
    :cond_7
    iget-object v0, p2, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    if-nez v0, :cond_8

    return v3

    .line 1167
    :cond_8
    iget-object v0, p1, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object v0, v0, Lcom/android/settings/applications/y$f;->v:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1169
    iget-object v1, p2, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object v1, v1, Lcom/android/settings/applications/y$f;->v:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1171
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x190

    if-lt v5, v6, :cond_9

    move v5, v3

    goto :goto_0

    :cond_9
    move v5, v4

    .line 1173
    :goto_0
    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v7, v6, :cond_a

    move v6, v3

    goto :goto_1

    :cond_a
    move v6, v4

    :goto_1
    if-eq v5, v6, :cond_c

    if-eqz v5, :cond_b

    return v3

    :cond_b
    return v2

    .line 1179
    :cond_c
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_d

    move v5, v3

    goto :goto_2

    :cond_d
    move v5, v4

    .line 1181
    :goto_2
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_e

    move v6, v3

    goto :goto_3

    :cond_e
    move v6, v4

    :goto_3
    if-eq v5, v6, :cond_10

    if-eqz v5, :cond_f

    return v2

    :cond_f
    return v3

    .line 1188
    :cond_10
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-eq v5, v6, :cond_12

    .line 1189
    iget p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget p2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-ge p1, p2, :cond_11

    return v2

    :cond_11
    return v3

    .line 1191
    :cond_12
    iget-object v0, p1, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object v0, v0, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object v1, v1, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    if-ne v0, v1, :cond_13

    return v4

    .line 1194
    :cond_13
    iget-object v0, p1, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object v0, v0, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    if-nez v0, :cond_14

    return v3

    .line 1195
    :cond_14
    iget-object v0, p2, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object v0, v0, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    if-nez v0, :cond_15

    return v2

    .line 1196
    :cond_15
    iget-object p1, p1, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object p1, p1, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object p2, p2, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
