.class public abstract Lcom/oppo/music/service/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/oppo/music/service/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/service/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/service/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oppo.music.service.IMediaPlaybackService"

.field static final TRANSACTION_addTracks:I = 0xd

.field static final TRANSACTION_bindDlnaPlayerService:I = 0x2d

.field static final TRANSACTION_getAlbumUnknownString:I = 0x22

.field static final TRANSACTION_getArtistUnknownString:I = 0x21

.field static final TRANSACTION_getBufferingPercent:I = 0x1c

.field static final TRANSACTION_getCueInnerPosition:I = 0xe

.field static final TRANSACTION_getCurrentCueTrack:I = 0xa

.field static final TRANSACTION_getCurrentPlaylistItem:I = 0x8

.field static final TRANSACTION_getCurrentPosition:I = 0x18

.field static final TRANSACTION_getCurrentTrack:I = 0x9

.field static final TRANSACTION_getDlnaDeviceID:I = 0x27

.field static final TRANSACTION_getDlnaDeviceList:I = 0x28

.field static final TRANSACTION_getDuration:I = 0x17

.field static final TRANSACTION_getLyricPath:I = 0x20

.field static final TRANSACTION_getMediaMountedCount:I = 0x1e

.field static final TRANSACTION_getPlayMode:I = 0x1a

.field static final TRANSACTION_getPlaylist:I = 0x6

.field static final TRANSACTION_getPlaylistCurrentPosition:I = 0x4

.field static final TRANSACTION_getPlaylistItem:I = 0x7

.field static final TRANSACTION_getPlaylistLength:I = 0x5

.field static final TRANSACTION_getPrivateMusicInterface:I = 0x2f

.field static final TRANSACTION_getTrack:I = 0xb

.field static final TRANSACTION_getTrackThumbPath:I = 0x1f

.field static final TRANSACTION_isBufferingBlocked:I = 0x1b

.field static final TRANSACTION_isDlnaAutoMode:I = 0x26

.field static final TRANSACTION_isDlnaMode:I = 0x25

.field static final TRANSACTION_isDlnaOperator:I = 0x2e

.field static final TRANSACTION_isPlaying:I = 0x10

.field static final TRANSACTION_next:I = 0x15

.field static final TRANSACTION_openPlaylist:I = 0x2

.field static final TRANSACTION_openPlaylistItem:I = 0x1

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0x13

.field static final TRANSACTION_playOnDlnaAutoMode:I = 0x29

.field static final TRANSACTION_playOnDlnaMode:I = 0x2a

.field static final TRANSACTION_playOnNormalMode:I = 0x2b

.field static final TRANSACTION_previous:I = 0x14

.field static final TRANSACTION_removeTracks:I = 0xc

.field static final TRANSACTION_seekTo:I = 0x16

.field static final TRANSACTION_setCueInnerPosition:I = 0xf

.field static final TRANSACTION_setDlnaPlayerVolume:I = 0x2c

.field static final TRANSACTION_setPlayMode:I = 0x19

.field static final TRANSACTION_setPlayerAutoSave:I = 0x23

.field static final TRANSACTION_setPlayerVolume:I = 0x24

.field static final TRANSACTION_setPlaylistCurrentPosition:I = 0x3

.field static final TRANSACTION_shakeSwitch:I = 0x1d

.field static final TRANSACTION_stop:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oppo.music.service.IMediaPlaybackService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oppo/music/service/IMediaPlaybackService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oppo.music.service.IMediaPlaybackService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/oppo/music/service/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/oppo/music/service/IMediaPlaybackService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/oppo/music/service/IMediaPlaybackService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const-string v1, "com.oppo.music.service.IMediaPlaybackService"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 500
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 493
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getPrivateMusicInterface()Lcom/oppo/music/service/IPrivateMusicInterface;

    move-result-object p0

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 496
    invoke-interface {p0}, Lcom/oppo/music/service/IPrivateMusicInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    .line 485
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->isDlnaOperator()Z

    move-result p0

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 478
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->bindDlnaPlayerService()V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 469
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 472
    invoke-virtual {p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->setDlnaPlayerVolume(I)V

    .line 473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 462
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->playOnNormalMode()V

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 453
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 456
    invoke-virtual {p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->playOnDlnaMode(I)V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 446
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->playOnDlnaAutoMode()V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 438
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getDlnaDeviceList()Ljava/util/List;

    move-result-object p0

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    .line 430
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getDlnaDeviceID()I

    move-result p0

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 422
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->isDlnaAutoMode()Z

    move-result p0

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 414
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->isDlnaMode()Z

    move-result p0

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 405
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 408
    invoke-virtual {p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->setPlayerVolume(F)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 398
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->setPlayerAutoSave()V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 390
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getAlbumUnknownString()Ljava/lang/String;

    move-result-object p0

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 382
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getArtistUnknownString()Ljava/lang/String;

    move-result-object p0

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 367
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 370
    sget-object p1, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oppo/music/media/PlaylistItem;

    .line 375
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getLyricPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object p0

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 352
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 355
    sget-object p1, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oppo/music/media/PlaylistItem;

    .line 360
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getTrackThumbPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object p0

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 344
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result p0

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 335
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v3, v2

    .line 338
    :cond_3
    invoke-virtual {p0, v3}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->shakeSwitch(Z)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 327
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getBufferingPercent()I

    move-result p0

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 319
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->isBufferingBlocked()Z

    move-result p0

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 311
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getPlayMode()I

    move-result p0

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 302
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 305
    invoke-virtual {p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->setPlayMode(I)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 294
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getCurrentPosition()J

    move-result-wide p0

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 286
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getDuration()J

    move-result-wide p0

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 277
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 280
    invoke-virtual {p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->seekTo(I)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 270
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->next()V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 263
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->previous()V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 256
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->play()V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 249
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->pause()V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 242
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->stop()V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 234
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result p0

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 225
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 228
    invoke-virtual {p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->setCueInnerPosition(I)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 217
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getCueInnerPosition()I

    move-result p0

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 205
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    sget-object p1, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oppo/music/media/PlaylistItem;

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->addTracks([Lcom/oppo/music/media/PlaylistItem;I)I

    move-result p0

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 195
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->removeTracks([J)I

    move-result p0

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 174
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 177
    sget-object p1, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oppo/music/media/PlaylistItem;

    .line 182
    :cond_4
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getTrack(Lcom/oppo/music/media/PlaylistItem;)Lcom/oppo/music/media/Track;

    move-result-object p0

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_5

    .line 185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {p0, p3, v2}, Lcom/oppo/music/media/Track;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 189
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 160
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getCurrentCueTrack()Lcom/oppo/music/media/Track;

    move-result-object p0

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_6

    .line 164
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {p0, p3, v2}, Lcom/oppo/music/media/Track;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 168
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    .line 146
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getCurrentTrack()Lcom/oppo/music/media/Track;

    move-result-object p0

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_7

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {p0, p3, v2}, Lcom/oppo/music/media/Track;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 154
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v2

    .line 132
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object p0

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_8

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {p0, p3, v2}, Lcom/oppo/music/media/PlaylistItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 140
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v2

    .line 116
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;

    move-result-object p0

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_9

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {p0, p3, v2}, Lcom/oppo/music/media/PlaylistItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 126
    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v2

    .line 102
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getPlaylist()Lcom/oppo/music/media/Playlist;

    move-result-object p0

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_a

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {p0, p3, v2}, Lcom/oppo/music/media/Playlist;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 110
    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v2

    .line 94
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getPlaylistLength()I

    move-result p0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 86
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getPlaylistCurrentPosition()I

    move-result p0

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 77
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->setPlaylistCurrentPosition(I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 61
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 64
    sget-object p1, Lcom/oppo/music/media/Playlist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oppo/music/media/Playlist;

    .line 70
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->openPlaylist(Lcom/oppo/music/media/Playlist;I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 47
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 50
    sget-object p1, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oppo/music/media/PlaylistItem;

    .line 55
    :cond_c
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->openPlaylistItem(Lcom/oppo/music/media/PlaylistItem;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 42
    :cond_d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
