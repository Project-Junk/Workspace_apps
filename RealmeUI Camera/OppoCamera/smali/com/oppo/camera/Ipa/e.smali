.class public Lcom/oppo/camera/Ipa/e;
.super Ljava/lang/Thread;
.source "ThumbnailProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/Ipa/e$a;,
        Lcom/oppo/camera/Ipa/e$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/Ipa/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lb/a/a;

.field private d:Lcom/oppo/camera/Ipa/e$b;

.field private volatile e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/Ipa/e;->a:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/Ipa/e;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/oppo/camera/Ipa/e;->c:Lb/a/a;

    .line 39
    iput-object v0, p0, Lcom/oppo/camera/Ipa/e;->d:Lcom/oppo/camera/Ipa/e$b;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/oppo/camera/Ipa/e;->e:Z

    const-string v0, "ThumbnailProcessor"

    .line 43
    invoke-virtual {p0, v0}, Lcom/oppo/camera/Ipa/e;->setName(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/Ipa/e;->b:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p0}, Lcom/oppo/camera/Ipa/e;->start()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)Lb/a/a;
    .locals 2

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/Ipa/e;->c:Lb/a/a;

    if-eqz p1, :cond_3

    .line 59
    invoke-virtual {p1}, Lb/a/a;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/Ipa/e;->c:Lb/a/a;

    if-eqz p1, :cond_1

    .line 62
    :try_start_0
    invoke-virtual {p1}, Lb/a/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    const-wide/32 p1, 0x3200000

    const/4 v1, 0x1

    .line 73
    :try_start_1
    invoke-static {v0, v1, v1, p1, p2}, Lb/a/a;->a(Ljava/io/File;IIJ)Lb/a/a;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/Ipa/e;->c:Lb/a/a;

    return-object p1
.end method

.method private b(Lcom/oppo/camera/Ipa/e$a;)V
    .locals 11

    const-string v0, "ThumbnailProcessor"

    const-string v1, "generateThumbnailAndUri"

    .line 118
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p1, Lcom/oppo/camera/Ipa/e$a;->a:[B

    const/16 v1, 0x10e

    const/16 v2, -0x5a

    const/16 v3, 0x5a

    const/16 v4, 0xb4

    if-eqz v0, :cond_9

    .line 123
    iget v0, p1, Lcom/oppo/camera/Ipa/e$a;->l:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 124
    iget-object v5, p1, Lcom/oppo/camera/Ipa/e$a;->a:[B

    iget-object v0, p1, Lcom/oppo/camera/Ipa/e$a;->d:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v0, p1, Lcom/oppo/camera/Ipa/e$a;->d:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    const/16 v8, 0x10e

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/oppo/camera/o/d;->a([BIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "ThumbnailProcessor"

    const-string v0, "generateThumbnailAndUri, bitmap is null"

    .line 128
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_0
    iget v5, p1, Lcom/oppo/camera/Ipa/e$a;->j:I

    if-eqz v5, :cond_7

    if-eq v5, v3, :cond_5

    if-eq v5, v4, :cond_3

    if-eq v5, v1, :cond_1

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateThumbnailAndUri, mOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/oppo/camera/Ipa/e$a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is wrong!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThumbnailProcessor"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_1
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->g:Ljava/lang/String;

    const-string v5, "off"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 166
    :cond_2
    invoke-static {v0, v3}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :cond_3
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->g:Ljava/lang/String;

    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    invoke-static {v0, v4}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 156
    :cond_4
    invoke-static {v0, v4}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 142
    :cond_5
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->g:Ljava/lang/String;

    const-string v5, "off"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    invoke-static {v0, v3}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 146
    :cond_6
    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 135
    :cond_7
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->g:Ljava/lang/String;

    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 136
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :cond_8
    iget-object v5, p1, Lcom/oppo/camera/Ipa/e$a;->a:[B

    iget-object v0, p1, Lcom/oppo/camera/Ipa/e$a;->d:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v0, p1, Lcom/oppo/camera/Ipa/e$a;->d:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    const/16 v8, 0x5a

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/oppo/camera/o/d;->a([BIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    iget v1, p1, Lcom/oppo/camera/Ipa/e$a;->j:I

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 181
    :cond_9
    iget-object v0, p1, Lcom/oppo/camera/Ipa/e$a;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    .line 182
    iget-object v0, p1, Lcom/oppo/camera/Ipa/e$a;->b:Landroid/graphics/Bitmap;

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v0, v5}, Lcom/oppo/camera/o/d;->b(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    iget v5, p1, Lcom/oppo/camera/Ipa/e$a;->l:I

    invoke-static {v5}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 185
    iget v5, p1, Lcom/oppo/camera/Ipa/e$a;->j:I

    if-eqz v5, :cond_10

    if-eq v5, v3, :cond_e

    if-eq v5, v4, :cond_c

    if-eq v5, v1, :cond_a

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateThumbnailAndUri, mOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/oppo/camera/Ipa/e$a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is wrong!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThumbnailProcessor"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_a
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->g:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 215
    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_b
    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_c
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->g:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 205
    invoke-static {v0, v4}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_d
    invoke-static {v0, v4}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_e
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->g:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 195
    invoke-static {v0, v3}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_f
    invoke-static {v0, v3}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_10
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->g:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 188
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_11
    iget v1, p1, Lcom/oppo/camera/Ipa/e$a;->j:I

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_12
    const/4 v0, 0x0

    :cond_13
    :goto_0
    if-eqz v0, :cond_17

    .line 237
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->e:Landroid/util/Size;

    const/4 v2, -0x1

    if-eqz v1, :cond_15

    .line 238
    iget v1, p1, Lcom/oppo/camera/Ipa/e$a;->k:I

    rem-int/2addr v1, v4

    if-nez v1, :cond_14

    .line 239
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->e:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    neg-int v2, v1

    .line 240
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->e:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_1

    .line 242
    :cond_14
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->e:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    neg-int v2, v1

    .line 243
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->e:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    :goto_1
    neg-int v1, v1

    goto :goto_2

    :cond_15
    move v1, v2

    .line 247
    :goto_2
    new-instance v3, Lcom/oppo/camera/v$a;

    invoke-direct {v3}, Lcom/oppo/camera/v$a;-><init>()V

    .line 248
    iget-object v4, p1, Lcom/oppo/camera/Ipa/e$a;->h:Ljava/lang/String;

    iput-object v4, v3, Lcom/oppo/camera/v$a;->g:Ljava/lang/String;

    .line 249
    iget-wide v4, p1, Lcom/oppo/camera/Ipa/e$a;->i:J

    iput-wide v4, v3, Lcom/oppo/camera/v$a;->l:J

    .line 250
    iget-object v4, p1, Lcom/oppo/camera/Ipa/e$a;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/oppo/camera/v$a;->j:Ljava/lang/String;

    .line 251
    iget v4, p1, Lcom/oppo/camera/Ipa/e$a;->l:I

    iput v4, v3, Lcom/oppo/camera/v$a;->q:I

    const-string v4, "jpeg"

    .line 252
    iput-object v4, v3, Lcom/oppo/camera/v$a;->i:Ljava/lang/String;

    .line 253
    iput v2, v3, Lcom/oppo/camera/v$a;->o:I

    .line 254
    iput v1, v3, Lcom/oppo/camera/v$a;->p:I

    .line 255
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->f:Ljava/lang/String;

    iput-object v1, v3, Lcom/oppo/camera/v$a;->z:Ljava/lang/String;

    .line 256
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->m:Landroid/content/ContentResolver;

    iput-object v1, v3, Lcom/oppo/camera/v$a;->a:Landroid/content/ContentResolver;

    .line 257
    iget v1, p1, Lcom/oppo/camera/Ipa/e$a;->p:I

    iput v1, v3, Lcom/oppo/camera/v$a;->n:I

    .line 259
    iget-wide v1, p1, Lcom/oppo/camera/Ipa/e$a;->r:J

    iput-wide v1, v3, Lcom/oppo/camera/v$a;->m:J

    .line 260
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->q:Ljava/lang/String;

    iput-object v1, v3, Lcom/oppo/camera/v$a;->k:Ljava/lang/String;

    .line 261
    iget-object v1, v3, Lcom/oppo/camera/v$a;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/Ipa/e;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 262
    iput-object v0, v3, Lcom/oppo/camera/v$a;->f:Landroid/graphics/Bitmap;

    .line 264
    invoke-static {v3}, Lcom/oppo/camera/v;->b(Lcom/oppo/camera/v$a;)Landroid/net/Uri;

    move-result-object v7

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateThumbnailAndUri, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/oppo/camera/Ipa/e$a;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailProcessor"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Lcom/oppo/camera/Ipa/b$c;

    invoke-direct {v0}, Lcom/oppo/camera/Ipa/b$c;-><init>()V

    .line 269
    iput-object v7, v0, Lcom/oppo/camera/Ipa/b$c;->a:Landroid/net/Uri;

    .line 270
    iget-object v1, v3, Lcom/oppo/camera/v$a;->a:Landroid/content/ContentResolver;

    iput-object v1, v0, Lcom/oppo/camera/Ipa/b$c;->b:Landroid/content/ContentResolver;

    const-string v1, "jpeg"

    .line 271
    iput-object v1, v0, Lcom/oppo/camera/Ipa/b$c;->c:Ljava/lang/String;

    .line 272
    iget-object v1, v3, Lcom/oppo/camera/v$a;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/oppo/camera/Ipa/b$c;->d:Ljava/lang/String;

    .line 273
    iget-object v1, v3, Lcom/oppo/camera/v$a;->f:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/oppo/camera/Ipa/b$c;->e:Landroid/graphics/Bitmap;

    .line 274
    iget-object v1, p1, Lcom/oppo/camera/Ipa/e$a;->b:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/oppo/camera/Ipa/b$c;->f:Landroid/graphics/Bitmap;

    .line 275
    iget v1, p1, Lcom/oppo/camera/Ipa/e$a;->k:I

    iput v1, v0, Lcom/oppo/camera/Ipa/b$c;->g:I

    .line 276
    iget-wide v1, p1, Lcom/oppo/camera/Ipa/e$a;->n:J

    iput-wide v1, v0, Lcom/oppo/camera/Ipa/b$c;->h:J

    .line 277
    iget-boolean v1, p1, Lcom/oppo/camera/Ipa/e$a;->o:Z

    iput-boolean v1, v0, Lcom/oppo/camera/Ipa/b$c;->i:Z

    .line 278
    iget-wide v1, v3, Lcom/oppo/camera/v$a;->l:J

    iput-wide v1, v0, Lcom/oppo/camera/Ipa/b$c;->k:J

    .line 279
    iget-wide v1, p1, Lcom/oppo/camera/Ipa/e$a;->s:J

    iput-wide v1, v0, Lcom/oppo/camera/Ipa/b$c;->l:J

    .line 281
    iget-object v4, v3, Lcom/oppo/camera/v$a;->f:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-wide v1, v3, Lcom/oppo/camera/v$a;->l:J

    .line 282
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lcom/oppo/camera/v$a;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/oppo/camera/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v3, Lcom/oppo/camera/v$a;->l:J

    .line 281
    invoke-static/range {v4 .. v10}, Lcom/oppo/camera/ui/control/e;->a(Landroid/graphics/Bitmap;IILandroid/net/Uri;Ljava/lang/String;J)Lcom/oppo/camera/ui/control/e;

    move-result-object v1

    .line 284
    iget-wide v4, p1, Lcom/oppo/camera/Ipa/e$a;->s:J

    invoke-virtual {v1, v4, v5}, Lcom/oppo/camera/ui/control/e;->a(J)V

    .line 286
    iget-object p1, p0, Lcom/oppo/camera/Ipa/e;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/Ipa/e;->d:Lcom/oppo/camera/Ipa/e$b;

    if-eqz v2, :cond_16

    .line 288
    iget-object v2, p0, Lcom/oppo/camera/Ipa/e;->d:Lcom/oppo/camera/Ipa/e$b;

    iget-object v3, v3, Lcom/oppo/camera/v$a;->a:Landroid/content/ContentResolver;

    invoke-interface {v2, v1, v0, v3}, Lcom/oppo/camera/Ipa/e$b;->a(Lcom/oppo/camera/ui/control/e;Lcom/oppo/camera/Ipa/b$c;Landroid/content/ContentResolver;)V

    .line 290
    :cond_16
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_17
    :goto_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ThumbnailProcessor"

    const-string v1, "onDestroy"

    .line 329
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/oppo/camera/Ipa/e;->e:Z

    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/oppo/camera/Ipa/e$a;)V
    .locals 1

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/oppo/camera/Ipa/e$b;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/oppo/camera/Ipa/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    iput-object p1, p0, Lcom/oppo/camera/Ipa/e;->d:Lcom/oppo/camera/Ipa/e$b;

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/e;->c:Lb/a/a;

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Lcom/oppo/camera/v;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/Ipa/e;->a(Ljava/lang/String;Z)Lb/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/Ipa/e;->c:Lb/a/a;

    goto :goto_0

    .line 301
    :cond_0
    invoke-static {}, Lcom/oppo/camera/v;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/Ipa/e;->a(Ljava/lang/String;Z)Lb/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/Ipa/e;->c:Lb/a/a;

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/e;->c:Lb/a/a;

    if-nez v0, :cond_1

    const-string p1, "ThumbnailProcessor"

    const-string p2, "saveSmallImageForGallery, mDiskLruCache is null!"

    .line 305
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/Ipa/e;->c:Lb/a/a;

    invoke-virtual {v0, p1}, Lb/a/a;->b(Ljava/lang/String;)Lb/a/a$a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 313
    invoke-static {p2, p1}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;Lb/a/a$a;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 314
    invoke-virtual {p1}, Lb/a/a$a;->a()V

    goto :goto_1

    .line 316
    :cond_2
    invoke-virtual {p1}, Lb/a/a$a;->b()V

    .line 319
    :goto_1
    iget-object p1, p0, Lcom/oppo/camera/Ipa/e;->c:Lb/a/a;

    invoke-virtual {p1}, Lb/a/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 324
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 322
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public run()V
    .locals 2

    .line 94
    :goto_0
    monitor-enter p0

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/Ipa/e;->e:Z

    if-eqz v0, :cond_0

    .line 96
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/e;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/Ipa/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/Ipa/e;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/Ipa/e$a;

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-direct {p0, v0}, Lcom/oppo/camera/Ipa/e;->b(Lcom/oppo/camera/Ipa/e$a;)V

    goto :goto_0

    .line 102
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :catch_0
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 111
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
