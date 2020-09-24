.class final Lcom/coloros/d/a/a/a$a$a;
.super Ljava/lang/Object;
.source "IUpdateWeatherListener.java"

# interfaces
.implements Lcom/coloros/d/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/d/a/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/coloros/d/a/a/a;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/coloros/d/a/a/a$a$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a(JZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.coloros.weather.app.aidl.IUpdateWeatherListener"

    .line 115
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 117
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v4, p0, Lcom/coloros/d/a/a/a$a$a;->b:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-static {}, Lcom/coloros/d/a/a/a$a;->a()Lcom/coloros/d/a/a/a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 121
    invoke-static {}, Lcom/coloros/d/a/a/a$a;->a()Lcom/coloros/d/a/a/a;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/coloros/d/a/a/a;->a(JZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 124
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    throw p1
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.coloros.weather.app.aidl.IUpdateWeatherListener"

    .line 136
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    .line 137
    :goto_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, p2

    .line 138
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v6, p3

    .line 139
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v7, p4

    .line 140
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v9, p6

    .line 141
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    .line 142
    :try_start_1
    iget-object v3, v11, Lcom/coloros/d/a/a/a$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    invoke-static {}, Lcom/coloros/d/a/a/a$a;->a()Lcom/coloros/d/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    invoke-static {}, Lcom/coloros/d/a/a/a$a;->a()Lcom/coloros/d/a/a/a;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    invoke-interface/range {v3 .. v10}, Lcom/coloros/d/a/a/a;->a(ZLjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 147
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v11, p0

    .line 150
    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/coloros/d/a/a/a$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
