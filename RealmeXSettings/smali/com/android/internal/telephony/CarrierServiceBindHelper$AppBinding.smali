.class Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppBinding"
.end annotation


# instance fields
.field private bindCount:I

.field private carrierPackage:Ljava/lang/String;

.field private carrierServiceClass:Ljava/lang/String;

.field private connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

.field private lastBindStartMillis:J

.field private lastUnbindMillis:J

.field private mUnbindScheduledUptimeMillis:J

.field private phoneId:I

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private unbindCount:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V
    .locals 2

    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 148
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    .line 151
    iput p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->performImmediateUnbind()V

    return-void
.end method

.method private cancelScheduledUnbind()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$600(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, -0x1

    .line 300
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    return-void
.end method

.method private performImmediateUnbind()V
    .locals 3

    .line 284
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastUnbindMillis:J

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    .line 289
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierServiceClass:Ljava/lang/String;

    const-string v1, "Unbinding from carrier app"

    .line 292
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$400(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 294
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    const-wide/16 v0, -0x1

    .line 295
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Carrier app binding for phone "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  connection: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  bindCount: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  lastBindStartMillis: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastBindStartMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  unbindCount: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  lastUnbindMillis: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastUnbindMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mUnbindScheduledUptimeMillis: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    return v0
.end method

.method rebind()V
    .locals 11

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .line 172
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$400(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.carrier.CarrierService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_4

    .line 183
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Found carrier app: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 187
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    .line 191
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$400(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v6, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 199
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 201
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    move-object v5, v2

    :goto_0
    if-eqz v5, :cond_7

    const-string v7, "android.service.carrier.LONG_LIVED_BINDING"

    .line 206
    invoke-virtual {v5, v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierServiceClass:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 214
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    goto :goto_1

    .line 215
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    if-eqz v1, :cond_5

    .line 218
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->cancelScheduledUnbind()V

    return-void

    .line 222
    :cond_5
    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    .line 223
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierServiceClass:Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Binding to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    .line 228
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastBindStartMillis:J

    .line 231
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$400(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    const v8, 0x4000001

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .line 237
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$600(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    .line 235
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    const-string v0, "bindService returned false"

    goto :goto_2

    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to bind to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Error: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    return-void

    :cond_7
    :goto_3
    const-string v0, "Carrier app does not want a long lived binding"

    .line 207
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    return-void

    .line 177
    :cond_8
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No carrier app for: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    return-void
.end method

.method unbind(Z)V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    .line 269
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->access$700(Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    .line 274
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    const-string p1, "Scheduling unbind in 30000 millis"

    .line 275
    invoke-static {p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$600(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .line 277
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$600(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    .line 276
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_2
    return-void

    .line 270
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->cancelScheduledUnbind()V

    .line 271
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->performImmediateUnbind()V

    return-void
.end method
