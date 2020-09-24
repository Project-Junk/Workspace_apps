.class public final Lcom/android/settingslib/d/a;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/android/settingslib/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/a$a;
    }
.end annotation


# static fields
.field public static a:Z = true

.field static final d:[Landroid/os/ParcelUuid;


# instance fields
.field public b:Landroid/bluetooth/BluetoothA2dp;

.field public c:Z

.field private e:Landroid/content/Context;

.field private final f:Lcom/android/settingslib/d/h;

.field private final g:Lcom/android/settingslib/d/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/d/a;->d:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/settingslib/d/a;->e:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/settingslib/d/a;->f:Lcom/android/settingslib/d/h;

    .line 100
    iput-object p3, p0, Lcom/android/settingslib/d/a;->g:Lcom/android/settingslib/d/s;

    .line 101
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/d/a$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/d/a$a;-><init>(Lcom/android/settingslib/d/a;B)V

    const/4 v0, 0x2

    invoke-virtual {p2, p1, p3, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private static synthetic a(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 0

    .line 286
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result p1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method static synthetic a(Lcom/android/settingslib/d/a;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settingslib/d/a;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settingslib/d/a;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/settingslib/d/a;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settingslib/d/a;)Lcom/android/settingslib/d/h;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/d/a;->f:Lcom/android/settingslib/d/h;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settingslib/d/a;)Lcom/android/settingslib/d/s;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/d/a;->g:Lcom/android/settingslib/d/s;

    return-object p0
.end method

.method public static synthetic lambda$O8UqwYtc1jznDBeYgYeutuFameI(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/d/a;->a(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .line 354
    iget-object p1, p0, Lcom/android/settingslib/d/a;->e:Landroid/content/Context;

    const-string v0, "ic_bt_headphones_a2dp"

    invoke-static {p1, v0}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 149
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 196
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 197
    iget-object p2, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 200
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/android/settingslib/d/a;->c:Z

    return v0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 154
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 160
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 170
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 175
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final e()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 180
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 185
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 215
    sget-boolean v0, Lcom/android/settingslib/d/a;->a:Z

    const-string v1, "A2dpProfile"

    if-eqz v0, :cond_0

    const-string v0, " execute supportsHighQualityAudio()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 217
    sget-boolean p1, Lcom/android/settingslib/d/a;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "mService is null."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    .line 220
    :cond_2
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method protected final finalize()V
    .locals 4

    const-string v0, "A2dpProfile"

    const-string v1, "finalize()"

    .line 358
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    .line 361
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 363
    iput-object v1, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error cleaning up A2DP proxy"

    .line 365
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final g(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 6

    .line 272
    sget-boolean v0, Lcom/android/settingslib/d/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, " execute getHighQualityAudioOptionLabel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    sget v0, Lcom/android/settingslib/e$h;->bluetooth_profile_a2dp_high_quality_unknown_codec:I

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/settingslib/d/a;->f(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/settingslib/d/a;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto/16 :goto_5

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/android/settingslib/d/a;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    .line 284
    sget-object v1, Lcom/android/settingslib/d/-$$Lambda$a$O8UqwYtc1jznDBeYgYeutuFameI;->INSTANCE:Lcom/android/settingslib/d/-$$Lambda$a$O8UqwYtc1jznDBeYgYeutuFameI;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_2
    move-object p1, v3

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 290
    array-length v4, p1

    if-gtz v4, :cond_3

    goto :goto_1

    :cond_3
    aget-object v3, p1, v1

    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    .line 292
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 293
    :cond_5
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    goto :goto_3

    :cond_6
    :goto_2
    const p1, 0xf4240

    :goto_3
    const/4 v3, -0x1

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    move v2, v3

    goto :goto_4

    :pswitch_0
    const/4 v2, 0x7

    goto :goto_4

    :pswitch_1
    const/4 v2, 0x5

    goto :goto_4

    :pswitch_2
    const/4 v2, 0x6

    goto :goto_4

    :pswitch_3
    const/4 v2, 0x4

    goto :goto_4

    :pswitch_4
    const/4 v2, 0x3

    goto :goto_4

    :pswitch_5
    move v2, v4

    :goto_4
    :pswitch_6
    if-gez v2, :cond_7

    .line 321
    iget-object p1, p0, Lcom/android/settingslib/d/a;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 323
    :cond_7
    iget-object p1, p0, Lcom/android/settingslib/d/a;->e:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/e$h;->bluetooth_profile_a2dp_high_quality:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settingslib/d/a;->e:Landroid/content/Context;

    .line 324
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settingslib/e$a;->bluetooth_a2dp_codec_titles:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v2

    aput-object v2, v3, v1

    .line 323
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 276
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/android/settingslib/d/a;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 336
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_profile_a2dp:I

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "A2DP"

    return-object v0
.end method
