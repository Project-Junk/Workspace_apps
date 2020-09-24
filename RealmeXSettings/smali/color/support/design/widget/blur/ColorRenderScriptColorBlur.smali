.class Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;
.super Lcolor/support/design/widget/blur/ColorBaseColorBlurEngine;
.source "ColorRenderScriptColorBlur.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorRenderScriptColorBlur"

.field private static mIsAvailabilityChecked:Z

.field private static mIsAvailable:Z


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private mBitmapHeight:I

.field private mBitmapMapMemoryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapWidth:I

.field private mInput:Landroid/renderscript/Allocation;

.field private mOutBitmap:Landroid/graphics/Bitmap;

.field private mOutput:Landroid/renderscript/Allocation;

.field private final mRenderScript:Landroid/renderscript/RenderScript;

.field private final mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcolor/support/design/widget/blur/ColorBlurConfig;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2}, Lcolor/support/design/widget/blur/ColorBaseColorBlurEngine;-><init>(Lcolor/support/design/widget/blur/ColorBlurConfig;)V

    .line 22
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->LOCK:Ljava/lang/Object;

    .line 32
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mBitmapMapMemoryCache:Ljava/util/Map;

    .line 36
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 37
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method

.method private blur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 87
    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mBitmapMapMemoryCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 89
    iput-object v2, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mOutBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 91
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mOutBitmap:Landroid/graphics/Bitmap;

    .line 92
    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mBitmapMapMemoryCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_0
    iget-object v2, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 96
    :try_start_0
    iget-object v3, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mInput:Landroid/renderscript/Allocation;

    if-eqz v3, :cond_1

    iget v3, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mBitmapWidth:I

    if-ne v3, v0, :cond_1

    iget v3, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mBitmapHeight:I

    if-eq v3, v1, :cond_2

    .line 97
    :cond_1
    iput v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mBitmapWidth:I

    .line 98
    iput v1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mBitmapHeight:I

    .line 99
    invoke-direct {p0}, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->destroyInputOutput()V

    .line 100
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mInput:Landroid/renderscript/Allocation;

    .line 102
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mOutput:Landroid/renderscript/Allocation;

    .line 105
    :cond_2
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    invoke-virtual {v0}, Lcolor/support/design/widget/blur/ColorBlurConfig;->radius()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 107
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 108
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mOutput:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 109
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mOutput:Landroid/renderscript/Allocation;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 110
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mOutBitmap:Landroid/graphics/Bitmap;

    return-object p1

    :catchall_0
    move-exception p1

    .line 110
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private destroyInputOutput()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mInput:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 118
    iput-object v1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mInput:Landroid/renderscript/Allocation;

    .line 120
    :cond_0
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mOutput:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 122
    iput-object v1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mOutput:Landroid/renderscript/Allocation;

    :cond_1
    return-void
.end method

.method public static declared-synchronized isAvailable(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-boolean v1, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mIsAvailabilityChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 45
    :try_start_1
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0
    :try_end_1
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 51
    :try_start_2
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 53
    :cond_0
    sput-boolean v1, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mIsAvailabilityChecked:Z

    .line 54
    sput-boolean v1, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mIsAvailable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 47
    :catch_0
    :try_start_3
    sget-object p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->TAG:Ljava/lang/String;

    const-string v2, "Renderscript is not available on this device."

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    sput-boolean v1, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mIsAvailabilityChecked:Z

    const/4 p0, 0x0

    .line 54
    sput-boolean p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mIsAvailable:Z

    goto :goto_1

    .line 53
    :goto_0
    sput-boolean v1, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mIsAvailabilityChecked:Z

    .line 54
    sput-boolean v1, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mIsAvailable:Z

    throw p0

    .line 57
    :cond_1
    :goto_1
    sget-boolean p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mIsAvailable:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 68
    invoke-super {p0}, Lcolor/support/design/widget/blur/ColorBaseColorBlurEngine;->destroy()V

    .line 69
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    .line 73
    :cond_0
    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 76
    :cond_1
    invoke-direct {p0}, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->destroyInputOutput()V

    .line 77
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public execute(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;->blur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
