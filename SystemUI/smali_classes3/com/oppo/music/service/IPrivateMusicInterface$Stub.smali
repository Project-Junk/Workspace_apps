.class public abstract Lcom/oppo/music/service/IPrivateMusicInterface$Stub;
.super Landroid/os/Binder;
.source "IPrivateMusicInterface.java"

# interfaces
.implements Lcom/oppo/music/service/IPrivateMusicInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/service/IPrivateMusicInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/service/IPrivateMusicInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oppo.music.service.IPrivateMusicInterface"

.field static final TRANSACTION_getLocalSongs:I = 0x5

.field static final TRANSACTION_getLocalSongsNumber:I = 0x4

.field static final TRANSACTION_getPlayMoodIndex:I = 0x2

.field static final TRANSACTION_isTrackOnline:I = 0x3

.field static final TRANSACTION_playTrack:I = 0x6

.field static final TRANSACTION_registerListener:I = 0x7

.field static final TRANSACTION_searchSongsAsync:I = 0x9

.field static final TRANSACTION_searchSongsSync:I = 0xa

.field static final TRANSACTION_setPlayMoodIndex:I = 0x1

.field static final TRANSACTION_unRegisterListener:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oppo.music.service.IPrivateMusicInterface"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/oppo/music/service/IPrivateMusicInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oppo/music/service/IPrivateMusicInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oppo.music.service.IPrivateMusicInterface"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/oppo/music/service/IPrivateMusicInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/oppo/music/service/IPrivateMusicInterface;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/oppo/music/service/IPrivateMusicInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oppo/music/service/IPrivateMusicInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.oppo.music.service.IPrivateMusicInterface"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 145
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 148
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 153
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IPrivateMusicInterface$Stub;->searchSongsSync(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 131
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 139
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IPrivateMusicInterface$Stub;->searchSongsAsync(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 122
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/music/service/ISearchCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/music/service/ISearchCallBack;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/oppo/music/service/IPrivateMusicInterface$Stub;->unRegisterListener(Lcom/oppo/music/service/ISearchCallBack;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 113
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/music/service/ISearchCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/music/service/ISearchCallBack;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/oppo/music/service/IPrivateMusicInterface$Stub;->registerListener(Lcom/oppo/music/service/ISearchCallBack;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 99
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    sget-object p1, Lcom/oppo/music/media/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oppo/music/media/Track;

    .line 107
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IPrivateMusicInterface$Stub;->playTrack(Lcom/oppo/music/media/Track;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 87
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/oppo/music/service/IPrivateMusicInterface$Stub;->getLocalSongs(II)Ljava/util/List;

    move-result-object p0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 79
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/oppo/music/service/IPrivateMusicInterface$Stub;->getLocalSongsNumber()I

    move-result p0

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 64
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 67
    sget-object p1, Lcom/oppo/music/media/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oppo/music/media/Track;

    .line 72
    :cond_3
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IPrivateMusicInterface$Stub;->isTrackOnline(Lcom/oppo/music/media/Track;)Z

    move-result p0

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 56
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/oppo/music/service/IPrivateMusicInterface$Stub;->getPlayMoodIndex()I

    move-result p0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 47
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/oppo/music/service/IPrivateMusicInterface$Stub;->setPlayMoodIndex(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 42
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
