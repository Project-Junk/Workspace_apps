.class public Lcom/oppo/camera/e/a;
.super Ljava/lang/Object;
.source "CameraCharacteristicsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/e/a$a;
    }
.end annotation


# static fields
.field private static a:Landroid/hardware/camera2/CameraManager;

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/e/h;",
            ">;"
        }
    .end annotation
.end field

.field private static c:[Ljava/lang/String;

.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Lcom/oppo/camera/e/a$a;

.field private static h:Lcom/oppo/camera/e/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(II)I
    .locals 1

    .line 251
    invoke-static {p1}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->b()I

    move-result p1

    add-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    rsub-int p0, p1, 0x168

    .line 256
    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->b()I

    move-result p1

    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p0, p1, 0x168

    :goto_0
    return p0
.end method

.method public static a()Lcom/oppo/camera/e/a$a;
    .locals 1

    .line 204
    sget-object v0, Lcom/oppo/camera/e/a;->g:Lcom/oppo/camera/e/a$a;

    return-object v0
.end method

.method public static a(I)Lcom/oppo/camera/e/h;
    .locals 1

    .line 242
    invoke-static {}, Lcom/oppo/camera/e/a;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p0, v0, :cond_0

    .line 243
    sget-object v0, Lcom/oppo/camera/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/e/h;

    return-object p0

    .line 245
    :cond_0
    sget-object p0, Lcom/oppo/camera/e/a;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/camera/e/h;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/oppo/camera/e/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraCharacteristicsUtil"

    const-string v2, "initialize"

    .line 95
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "camera"

    .line 97
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    sput-object v1, Lcom/oppo/camera/e/a;->a:Landroid/hardware/camera2/CameraManager;

    .line 98
    invoke-static {p0}, Lcom/oppo/camera/e/a;->b(Landroid/content/Context;)V

    const-string p0, "CameraCharacteristicsUtil"

    const-string v1, "initialize, X"

    .line 100
    invoke-static {p0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(I)I
    .locals 0

    .line 266
    invoke-static {p0}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->b()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(II)I
    .locals 3

    .line 278
    invoke-static {p0}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->c()I

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->b()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->b()I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->b()I

    move-result v0

    .line 291
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJpegOrientation, cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", orientation: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", rotation: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraCharacteristicsUtil"

    invoke-static {p1, p0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static b()Lcom/oppo/camera/e/a$a;
    .locals 1

    .line 208
    sget-object v0, Lcom/oppo/camera/e/a;->h:Lcom/oppo/camera/e/a$a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 8

    .line 104
    sget-object v0, Lcom/oppo/camera/e/a;->c:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 105
    sget-object v0, Lcom/oppo/camera/e/a;->a:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_0

    const-string v0, "camera"

    .line 106
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    sput-object p0, Lcom/oppo/camera/e/a;->a:Landroid/hardware/camera2/CameraManager;

    .line 110
    :cond_0
    :try_start_0
    sget-object p0, Lcom/oppo/camera/e/a;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oppo/camera/e/a;->c:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 116
    :cond_1
    :goto_0
    sget-object p0, Lcom/oppo/camera/e/a;->b:Ljava/util/ArrayList;

    const-string v0, "CameraCharacteristicsUtil"

    if-eqz p0, :cond_2

    sget-object p0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-nez p0, :cond_7

    :cond_2
    sget-object p0, Lcom/oppo/camera/e/a;->c:[Ljava/lang/String;

    if-eqz p0, :cond_7

    array-length p0, p0

    if-lez p0, :cond_7

    .line 118
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/oppo/camera/e/a;->d:Ljava/util/ArrayList;

    .line 119
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/oppo/camera/e/a;->e:Ljava/util/ArrayList;

    .line 120
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/oppo/camera/e/a;->b:Ljava/util/ArrayList;

    const/4 p0, 0x0

    move v1, p0

    .line 122
    :goto_1
    sget-object v2, Lcom/oppo/camera/e/a;->c:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_7

    const/4 v3, 0x0

    .line 126
    :try_start_1
    new-instance v4, Lcom/oppo/camera/e/h;

    sget-object v5, Lcom/oppo/camera/e/a;->a:Landroid/hardware/camera2/CameraManager;

    aget-object v2, v2, v1

    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/oppo/camera/e/h;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v2

    .line 128
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_2
    if-eqz v3, :cond_5

    .line 133
    :try_start_2
    sget-object v2, Lcom/oppo/camera/e/a;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 134
    invoke-virtual {v3}, Lcom/oppo/camera/e/h;->z()[I

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_3

    .line 135
    aget v4, v4, p0

    goto :goto_3

    :cond_3
    move v4, v5

    .line 137
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initCameraInfo, cameraType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cameraId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v6, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    if-nez v6, :cond_4

    .line 140
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    :cond_4
    if-le v4, v5, :cond_5

    .line 144
    sget-object v5, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    :catch_2
    :cond_5
    sget-object v2, Lcom/oppo/camera/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_6

    .line 153
    invoke-virtual {v3}, Lcom/oppo/camera/e/h;->c()I

    move-result v2

    if-nez v2, :cond_6

    .line 154
    sget-object v2, Lcom/oppo/camera/e/a;->e:Ljava/util/ArrayList;

    sget-object v3, Lcom/oppo/camera/e/a;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 156
    :cond_6
    sget-object v2, Lcom/oppo/camera/e/a;->d:Ljava/util/ArrayList;

    sget-object v3, Lcom/oppo/camera/e/a;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 161
    :cond_7
    invoke-static {}, Lcom/oppo/camera/e/a;->o()V

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCameraInfo, sAllCameraIds.length: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/camera/e/a;->c:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c()I
    .locals 1

    .line 212
    sget-object v0, Lcom/oppo/camera/e/a;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 213
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c(I)Z
    .locals 0

    .line 298
    invoke-static {p0}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->c()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d()I
    .locals 4

    const/4 v0, 0x0

    .line 223
    :try_start_0
    sget-object v1, Lcom/oppo/camera/e/a;->a:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Lcom/oppo/camera/e/h;

    sget-object v2, Lcom/oppo/camera/e/a;->a:Landroid/hardware/camera2/CameraManager;

    const-string v3, "0"

    .line 225
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oppo/camera/e/h;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 228
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->A()[I

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 235
    aget v0, v0, v1

    move v1, v0

    :cond_1
    return v1
.end method

.method public static d(I)I
    .locals 2

    .line 468
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e()Z
    .locals 2

    .line 302
    sget-object v0, Lcom/oppo/camera/e/a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static f()Z
    .locals 2

    .line 310
    sget-object v0, Lcom/oppo/camera/e/a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static g()Z
    .locals 3

    .line 318
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/e/a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    .line 321
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static h()I
    .locals 3

    .line 364
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    const/16 v1, 0xc

    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static i()I
    .locals 3

    .line 374
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    .line 376
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 380
    :cond_0
    sget-object v0, Lcom/oppo/camera/e/a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 381
    sget-object v0, Lcom/oppo/camera/e/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static j()I
    .locals 3

    .line 388
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 390
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 394
    :cond_0
    sget-object v0, Lcom/oppo/camera/e/a;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 395
    sget-object v0, Lcom/oppo/camera/e/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static k()I
    .locals 3

    .line 402
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    .line 404
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 408
    :cond_0
    sget-object v0, Lcom/oppo/camera/e/a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 409
    sget-object v0, Lcom/oppo/camera/e/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static l()I
    .locals 3

    .line 430
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    const/16 v1, 0x8

    .line 432
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 436
    :cond_0
    sget-object v0, Lcom/oppo/camera/e/a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 437
    sget-object v0, Lcom/oppo/camera/e/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static m()I
    .locals 3

    .line 444
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    const/16 v1, 0xa

    .line 446
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 450
    :cond_0
    sget-object v0, Lcom/oppo/camera/e/a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 451
    sget-object v0, Lcom/oppo/camera/e/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static n()I
    .locals 3

    .line 458
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    const/4 v1, 0x6

    .line 460
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    sget-object v0, Lcom/oppo/camera/e/a;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static o()V
    .locals 4

    .line 167
    sget-object v0, Lcom/oppo/camera/e/a;->g:Lcom/oppo/camera/e/a$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/e/a;->h:Lcom/oppo/camera/e/a$a;

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/persist/camera/stereoParams.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Ljava/io/File;)[B

    move-result-object v0

    .line 173
    sget-object v1, Lcom/oppo/camera/e/a;->g:Lcom/oppo/camera/e/a$a;

    if-nez v1, :cond_1

    .line 174
    new-instance v1, Lcom/oppo/camera/e/a$a;

    invoke-direct {v1}, Lcom/oppo/camera/e/a$a;-><init>()V

    sput-object v1, Lcom/oppo/camera/e/a;->g:Lcom/oppo/camera/e/a$a;

    .line 177
    :cond_1
    sget-object v1, Lcom/oppo/camera/e/a;->g:Lcom/oppo/camera/e/a$a;

    const/16 v2, 0x1022

    const/16 v3, 0x1025

    invoke-static {v0, v2, v3}, Lcom/oppo/camera/o/d;->g([BII)I

    move-result v2

    iput v2, v1, Lcom/oppo/camera/e/a$a;->b:I

    .line 179
    sget-object v1, Lcom/oppo/camera/e/a;->g:Lcom/oppo/camera/e/a$a;

    const/16 v2, 0x1026

    const/16 v3, 0x1029

    invoke-static {v0, v2, v3}, Lcom/oppo/camera/o/d;->g([BII)I

    move-result v2

    iput v2, v1, Lcom/oppo/camera/e/a$a;->a:I

    .line 181
    sget-object v1, Lcom/oppo/camera/e/a;->g:Lcom/oppo/camera/e/a$a;

    const/16 v2, 0x102a

    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->b([BI)F

    move-result v2

    iput v2, v1, Lcom/oppo/camera/e/a$a;->c:F

    .line 182
    sget-object v1, Lcom/oppo/camera/e/a;->g:Lcom/oppo/camera/e/a$a;

    const/16 v2, 0x102e

    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->b([BI)F

    move-result v2

    iput v2, v1, Lcom/oppo/camera/e/a$a;->d:F

    .line 183
    sget-object v1, Lcom/oppo/camera/e/a;->g:Lcom/oppo/camera/e/a$a;

    const/16 v2, 0x1032

    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->b([BI)F

    move-result v2

    iput v2, v1, Lcom/oppo/camera/e/a$a;->e:F

    .line 184
    sget-object v1, Lcom/oppo/camera/e/a;->g:Lcom/oppo/camera/e/a$a;

    const/16 v2, 0x1036

    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->b([BI)F

    move-result v2

    iput v2, v1, Lcom/oppo/camera/e/a$a;->f:F

    .line 186
    sget-object v1, Lcom/oppo/camera/e/a;->h:Lcom/oppo/camera/e/a$a;

    if-nez v1, :cond_2

    .line 187
    new-instance v1, Lcom/oppo/camera/e/a$a;

    invoke-direct {v1}, Lcom/oppo/camera/e/a$a;-><init>()V

    sput-object v1, Lcom/oppo/camera/e/a;->h:Lcom/oppo/camera/e/a$a;

    .line 190
    :cond_2
    sget-object v1, Lcom/oppo/camera/e/a;->h:Lcom/oppo/camera/e/a$a;

    const/16 v2, 0x11

    const/16 v3, 0x14

    invoke-static {v0, v2, v3}, Lcom/oppo/camera/o/d;->g([BII)I

    move-result v2

    iput v2, v1, Lcom/oppo/camera/e/a$a;->b:I

    .line 192
    sget-object v1, Lcom/oppo/camera/e/a;->h:Lcom/oppo/camera/e/a$a;

    const/16 v2, 0x15

    const/16 v3, 0x18

    invoke-static {v0, v2, v3}, Lcom/oppo/camera/o/d;->g([BII)I

    move-result v2

    iput v2, v1, Lcom/oppo/camera/e/a$a;->a:I

    .line 194
    sget-object v1, Lcom/oppo/camera/e/a;->h:Lcom/oppo/camera/e/a$a;

    const/16 v2, 0x19

    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->b([BI)F

    move-result v2

    iput v2, v1, Lcom/oppo/camera/e/a$a;->c:F

    .line 195
    sget-object v1, Lcom/oppo/camera/e/a;->h:Lcom/oppo/camera/e/a$a;

    const/16 v2, 0x1d

    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->b([BI)F

    move-result v2

    iput v2, v1, Lcom/oppo/camera/e/a$a;->d:F

    .line 196
    sget-object v1, Lcom/oppo/camera/e/a;->h:Lcom/oppo/camera/e/a$a;

    const/16 v2, 0x21

    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->b([BI)F

    move-result v2

    iput v2, v1, Lcom/oppo/camera/e/a$a;->e:F

    .line 197
    sget-object v1, Lcom/oppo/camera/e/a;->h:Lcom/oppo/camera/e/a$a;

    const/16 v2, 0x25

    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->b([BI)F

    move-result v0

    iput v0, v1, Lcom/oppo/camera/e/a$a;->f:F

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillBokehParam, sMasterCalibParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/camera/e/a;->g:Lcom/oppo/camera/e/a$a;

    invoke-virtual {v1}, Lcom/oppo/camera/e/a$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sDepthCalibParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/camera/e/a;->h:Lcom/oppo/camera/e/a$a;

    .line 200
    invoke-virtual {v1}, Lcom/oppo/camera/e/a$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCharacteristicsUtil"

    .line 199
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
