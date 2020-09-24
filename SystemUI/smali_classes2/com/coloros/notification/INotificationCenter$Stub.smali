.class public abstract Lcom/coloros/notification/INotificationCenter$Stub;
.super Landroid/os/Binder;
.source "INotificationCenter.java"

# interfaces
.implements Lcom/coloros/notification/INotificationCenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/notification/INotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/notification/INotificationCenter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.coloros.notification.INotificationCenter"

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0x8

.field static final TRANSACTION_canShowBanner:I = 0x4

.field static final TRANSACTION_getBadgeOption:I = 0x9

.field static final TRANSACTION_getChannelName:I = 0x3

.field static final TRANSACTION_getLockscreenVisibility:I = 0x5

.field static final TRANSACTION_getStowOption:I = 0xd

.field static final TRANSACTION_getSupportNumberBadgePackages:I = 0x7

.field static final TRANSACTION_isChangeableFold:I = 0x6

.field static final TRANSACTION_isFold:I = 0x2

.field static final TRANSACTION_setFold:I = 0x1

.field static final TRANSACTION_setStowOption:I = 0xc

.field static final TRANSACTION_updateChannelSound:I = 0xa

.field static final TRANSACTION_updateChannelVibration:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.coloros.notification.INotificationCenter"

    .line 71
    invoke-virtual {p0, p0, v0}, Lcom/coloros/notification/INotificationCenter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/coloros/notification/INotificationCenter;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.coloros.notification.INotificationCenter"

    .line 82
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    instance-of v1, v0, Lcom/coloros/notification/INotificationCenter;

    if-eqz v1, :cond_1

    .line 84
    check-cast v0, Lcom/coloros/notification/INotificationCenter;

    return-object v0

    .line 86
    :cond_1
    new-instance v0, Lcom/coloros/notification/INotificationCenter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/coloros/notification/INotificationCenter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/coloros/notification/INotificationCenter;
    .locals 1

    .line 609
    sget-object v0, Lcom/coloros/notification/INotificationCenter$Stub$Proxy;->sDefaultImpl:Lcom/coloros/notification/INotificationCenter;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/coloros/notification/INotificationCenter;)Z
    .locals 1

    .line 602
    sget-object v0, Lcom/coloros/notification/INotificationCenter$Stub$Proxy;->sDefaultImpl:Lcom/coloros/notification/INotificationCenter;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 603
    sput-object p0, Lcom/coloros/notification/INotificationCenter$Stub$Proxy;->sDefaultImpl:Lcom/coloros/notification/INotificationCenter;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    const-string v2, "com.coloros.notification.INotificationCenter"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 265
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/coloros/notification/INotificationCenter$Stub;->getStowOption(Ljava/lang/String;I)I

    move-result p0

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 252
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 259
    invoke-virtual {p0, p1, p4, p2}, Lcom/coloros/notification/INotificationCenter$Stub;->setStowOption(Ljava/lang/String;II)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 237
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v0, v1

    .line 246
    :cond_0
    invoke-virtual {p0, p1, p4, v2, v0}, Lcom/coloros/notification/INotificationCenter$Stub;->updateChannelVibration(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 221
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 230
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/coloros/notification/INotificationCenter$Stub;->updateChannelSound(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 209
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/coloros/notification/INotificationCenter$Stub;->getBadgeOption(Ljava/lang/String;I)I

    move-result p0

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 197
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/coloros/notification/INotificationCenter$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 189
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/coloros/notification/INotificationCenter$Stub;->getSupportNumberBadgePackages()Ljava/util/List;

    move-result-object p0

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 175
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 182
    invoke-virtual {p0, p1, p4, p2}, Lcom/coloros/notification/INotificationCenter$Stub;->isChangeableFold(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 161
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 168
    invoke-virtual {p0, p1, p4, p2}, Lcom/coloros/notification/INotificationCenter$Stub;->getLockscreenVisibility(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 147
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 154
    invoke-virtual {p0, p1, p4, p2}, Lcom/coloros/notification/INotificationCenter$Stub;->canShowBanner(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 133
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 140
    invoke-virtual {p0, p1, p4, p2}, Lcom/coloros/notification/INotificationCenter$Stub;->getChannelName(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 119
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-virtual {p0, p1, p4, p2}, Lcom/coloros/notification/INotificationCenter$Stub;->isFold(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 104
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    .line 113
    :cond_1
    invoke-virtual {p0, p1, p4, v2, v0}, Lcom/coloros/notification/INotificationCenter$Stub;->setFold(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 99
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
