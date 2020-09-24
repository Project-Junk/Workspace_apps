.class public abstract Lcom/coloros/d/a/a/b$a;
.super Landroid/os/Binder;
.source "IWeatherAppService.java"

# interfaces
.implements Lcom/coloros/d/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/d/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/d/a/a/b$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/coloros/d/a/a/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.coloros.weather.app.aidl.IWeatherAppService"

    .line 58
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    instance-of v1, v0, Lcom/coloros/d/a/a/b;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Lcom/coloros/d/a/a/b;

    return-object v0

    .line 62
    :cond_1
    new-instance v0, Lcom/coloros/d/a/a/b$a$a;

    invoke-direct {v0, p0}, Lcom/coloros/d/a/a/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static b()Lcom/coloros/d/a/a/b;
    .locals 1

    .line 359
    sget-object v0, Lcom/coloros/d/a/a/b$a$a;->a:Lcom/coloros/d/a/a/b;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.coloros.weather.app.aidl.IWeatherAppService"

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 151
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/a/b$a;->a(Landroid/os/IBinder;)Lcom/coloros/a/b;

    move-result-object p2

    .line 158
    invoke-virtual {p0, p1, p4, p2}, Lcom/coloros/d/a/a/b$a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/a/b;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 138
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/a/b$a;->a(Landroid/os/IBinder;)Lcom/coloros/a/b;

    move-result-object p2

    .line 145
    invoke-virtual {p0, p1, p4, p2}, Lcom/coloros/d/a/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/a/b;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 129
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v3, v1

    .line 132
    :cond_0
    invoke-virtual {p0, v3}, Lcom/coloros/d/a/a/b$a;->b(Z)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 114
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    sget-object p1, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/location/Address;

    .line 122
    :cond_1
    invoke-virtual {p0, v0}, Lcom/coloros/d/a/a/b$a;->a(Landroid/location/Address;)[I

    move-result-object p1

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 105
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v3, v1

    .line 108
    :cond_2
    invoke-virtual {p0, v3}, Lcom/coloros/d/a/a/b$a;->a(Z)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 94
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v3, v1

    .line 99
    :cond_3
    invoke-virtual {p0, v4, v5, v3}, Lcom/coloros/d/a/a/b$a;->a(JZ)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 88
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/coloros/d/a/a/b$a;->a()V

    return v1

    .line 80
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p2, "com.coloros.weather.app.aidl.IUpdateWeatherListener"

    .line 1039
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1040
    instance-of p3, p2, Lcom/coloros/d/a/a/a;

    if-eqz p3, :cond_5

    .line 1041
    move-object v0, p2

    check-cast v0, Lcom/coloros/d/a/a/a;

    goto :goto_0

    .line 1043
    :cond_5
    new-instance v0, Lcom/coloros/d/a/a/a$a$a;

    invoke-direct {v0, p1}, Lcom/coloros/d/a/a/a$a$a;-><init>(Landroid/os/IBinder;)V

    .line 83
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coloros/d/a/a/b$a;->a(Lcom/coloros/d/a/a/a;)V

    return v1

    .line 75
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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
