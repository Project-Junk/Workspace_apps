.class Lcom/android/internal/telephony/cat/IconLoader;
.super Landroid/os/Handler;
.source "IconLoader.java"


# static fields
.field private static final CLUT_ENTRY_SIZE:I = 0x3

.field private static final CLUT_LOCATION_OFFSET:I = 0x4

.field private static final EVENT_READ_CLUT_DONE:I = 0x3

.field private static final EVENT_READ_EF_IMG_RECOED_DONE:I = 0x1

.field private static final EVENT_READ_ICON_DONE:I = 0x2

.field private static final STATE_MULTI_ICONS:I = 0x2

.field private static final STATE_SINGLE_ICON:I = 0x1

.field private static sLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field private static sThread:Landroid/os/HandlerThread;


# instance fields
.field private mCurrentIcon:Landroid/graphics/Bitmap;

.field private mCurrentRecordIndex:I

.field private mEndMsg:Landroid/os/Message;

.field private mIconData:[B

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

.field private mRecordNumber:I

.field private mRecordNumbers:[I

.field private mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 73
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 75
    new-instance p1, Ljava/util/HashMap;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    return-void
.end method

.method private static bitToBnW(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/high16 p0, -0x1000000

    return p0
.end method

.method static getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;
    .locals 1

    .line 79
    sget-object p0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 83
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "Cat Icon Loader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    sput-object p0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance p0, Lcom/android/internal/telephony/cat/IconLoader;

    sget-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMask(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0xff

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x7f

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x3f

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x1f

    goto :goto_0

    :pswitch_4
    const/16 p0, 0xf

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_7
    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleImageDescriptor([B)Z
    .locals 1

    const/4 v0, 0x1

    .line 185
    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/ImageDescriptor;->parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 186
    iget-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 11

    const/4 p1, 0x0

    .line 243
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 244
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int v3, v0, v2

    .line 247
    new-array v4, v3, [I

    const/4 v5, 0x7

    const/4 v6, 0x2

    move v8, p1

    move v7, v5

    :goto_0
    if-ge p1, v3, :cond_1

    .line 254
    rem-int/lit8 v9, p1, 0x8

    if-nez v9, :cond_0

    add-int/lit8 v7, v6, 0x1

    .line 255
    aget-byte v6, p0, v6

    move v8, v6

    move v6, v7

    move v7, v5

    :cond_0
    add-int/lit8 v9, p1, 0x1

    add-int/lit8 v10, v7, -0x1

    shr-int v7, v8, v7

    and-int/2addr v7, v1

    .line 258
    invoke-static {v7}, Lcom/android/internal/telephony/cat/IconLoader;->bitToBnW(I)I

    move-result v7

    aput v7, v4, p1

    move p1, v9

    move v7, v10

    goto :goto_0

    :cond_1
    if-eq p1, v3, :cond_2

    const-string p0, "IconLoader"

    const-string p1, "parseToBnW; size error"

    .line 262
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v2, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static parseToRGB([BIZ[B)Landroid/graphics/Bitmap;
    .locals 18

    const/4 v0, 0x0

    .line 294
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    .line 295
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    .line 296
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    .line 297
    aget-byte v7, p0, v6

    and-int/lit16 v7, v7, 0xff

    move/from16 v8, p2

    if-ne v2, v8, :cond_0

    sub-int/2addr v7, v2

    .line 300
    aput-byte v0, p3, v7

    :cond_0
    mul-int v7, v1, v3

    .line 304
    new-array v8, v7, [I

    const/16 v9, 0x8

    rsub-int/lit8 v10, v5, 0x8

    const/4 v11, 0x6

    const/4 v12, 0x7

    .line 310
    aget-byte v11, p0, v11

    .line 311
    invoke-static {v5}, Lcom/android/internal/telephony/cat/IconLoader;->getMask(I)I

    move-result v13

    .line 312
    rem-int/2addr v9, v5

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    move v9, v10

    :goto_1
    if-ge v0, v7, :cond_4

    if-gez v9, :cond_3

    add-int/lit8 v11, v12, 0x1

    .line 316
    aget-byte v12, p0, v12

    if-eqz v2, :cond_2

    move v9, v10

    goto :goto_2

    :cond_2
    mul-int/lit8 v9, v9, -0x1

    :goto_2
    move/from16 v17, v12

    move v12, v11

    move/from16 v11, v17

    :cond_3
    shr-int v14, v11, v9

    and-int/2addr v14, v13

    mul-int/2addr v14, v6

    add-int/lit8 v15, v0, 0x1

    .line 321
    aget-byte v6, p3, v14

    add-int/lit8 v16, v14, 0x1

    move/from16 p2, v2

    aget-byte v2, p3, v16

    add-int/2addr v14, v4

    aget-byte v14, p3, v14

    invoke-static {v6, v2, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v8, v0

    sub-int/2addr v9, v5

    move/from16 v2, p2

    move v0, v15

    const/4 v6, 0x3

    goto :goto_1

    .line 326
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v1, v3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private postIcon()V
    .locals 4

    .line 220
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 226
    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 227
    aget v0, v2, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    return-void

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method private readClut()V
    .locals 8

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    mul-int/lit8 v6, v0, 0x3

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 196
    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v1, 0x4

    aget-byte v4, v0, v1

    const/4 v1, 0x5

    aget-byte v5, v0, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    return-void
.end method

.method private readIconData()V
    .locals 7

    const/4 v0, 0x2

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v2, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    return-void
.end method

.method private readId()V
    .locals 3

    .line 203
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 205
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    return-void
.end method

.method private startLoadingIcon(I)V
    .locals 2

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 116
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 117
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 118
    iput p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readId()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 369
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 371
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    .line 373
    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 374
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 136
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 163
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/telephony/cat/IconLoader;->parseToRGB([BIZ[B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 166
    iget-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "load icon done"

    .line 146
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 148
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v0, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    .line 150
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/IconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 151
    iget-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    return-void

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v0, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_3

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readClut()V

    return-void

    :cond_3
    const-string p1, "else  /postIcon "

    .line 157
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    return-void

    .line 138
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 139
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->handleImageDescriptor([B)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readIconData()V

    return-void

    .line 142
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unable to parse image descriptor"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "Icon load failed"

    .line 171
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    return-void
.end method

.method loadIcon(ILandroid/os/Message;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 108
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    const/4 p2, 0x1

    .line 109
    iput p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    return-void
.end method

.method loadIcons([ILandroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 91
    array-length v0, p1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 96
    array-length p2, p1

    new-array p2, p2, [Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    const/4 p2, 0x0

    .line 98
    iput p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    const/4 v0, 0x2

    .line 99
    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 100
    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    :cond_1
    :goto_0
    return-void
.end method
