.class public Lcom/android/internal/telephony/euicc/EuiccOperation;
.super Ljava/lang/Object;
.source "EuiccOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccOperation$Action;
    }
.end annotation


# static fields
.field static final ACTION_DOWNLOAD_CONFIRMATION_CODE:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final ACTION_DOWNLOAD_DEACTIVATE_SIM:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_DOWNLOAD_NO_PRIVILEGES:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_DOWNLOAD_NO_PRIVILEGES_OR_DEACTIVATE_SIM_CHECK_METADATA:I = 0x9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_DOWNLOAD_RESOLVABLE_ERRORS:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_GET_DEFAULT_LIST_DEACTIVATE_SIM:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_GET_METADATA_DEACTIVATE_SIM:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_SWITCH_DEACTIVATE_SIM:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_SWITCH_NO_PRIVILEGES:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/euicc/EuiccOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EuiccOperation"


# instance fields
.field public final mAction:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private final mCallingPackage:Ljava/lang/String;

.field private final mCallingToken:J

.field private final mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

.field private final mResolvableErrors:I

.field private final mSubscriptionId:I

.field private final mSwitchAfterDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccOperation$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 228
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 229
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 230
    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 231
    iput-boolean p6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 232
    iput-object p7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 233
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    return-void
.end method

.method constructor <init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;I)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 213
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 214
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 215
    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 216
    iput-boolean p6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 217
    iput-object p7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    .line 218
    iput p8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 239
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/DownloadableSubscription;

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    return-void
.end method

.method private static fail(Landroid/app/PendingIntent;)V
    .locals 3

    .line 531
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public static forDownloadConfirmationCode(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/16 v1, 0x8

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static forDownloadDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9

    .line 130
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static forDownloadNoPrivileges(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9

    .line 141
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x3

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static forDownloadNoPrivilegesOrDeactivateSimCheckMetadata(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9

    .line 152
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/16 v1, 0x9

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static forDownloadResolvableErrors(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;I)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 10

    .line 180
    new-instance v9, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x7

    const/4 v5, 0x0

    move-object v0, v9

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;I)V

    return-object v9
.end method

.method static forGetDefaultListDeactivateSim(JLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9

    .line 186
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static forGetMetadataDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9

    .line 117
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static forSwitchDeactivateSim(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9

    .line 193
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method static forSwitchNoPrivileges(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .locals 9

    .line 200
    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-wide v2, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v8
.end method

.method private resolvedDownloadConfirmationCode(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v0, p2}, Landroid/telephony/euicc/DownloadableSubscription;->setConfirmationCode(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v2, p1

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private resolvedDownloadDeactivateSim(IZLandroid/app/PendingIntent;)V
    .locals 8

    if-eqz p2, :cond_0

    .line 343
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v1, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void

    .line 353
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private resolvedDownloadNoPrivileges(IZLandroid/app/PendingIntent;)V
    .locals 12

    if-eqz p2, :cond_0

    .line 361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 367
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v8, 0x0

    move v1, p1

    move-wide v2, v10

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 381
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private resolvedDownloadNoPrivilegesOrDeactivateSimCheckMetadata(IZLandroid/app/PendingIntent;)V
    .locals 12

    if-eqz p2, :cond_0

    .line 389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 395
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v8, 0x0

    move v1, p1

    move-wide v2, v10

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivilegedCheckMetadata(IJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 409
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private resolvedDownloadResolvableErrors(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 11

    .line 439
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "android.service.euicc.extra.RESOLUTION_ALLOW_POLICY_RULES"

    .line 440
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 444
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const-string v2, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE"

    .line 445
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 455
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v0, v2}, Landroid/telephony/euicc/DownloadableSubscription;->setConfirmationCode(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v8, 0x1

    move v4, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private resolvedGetDefaultListDeactivateSim(IZLandroid/app/PendingIntent;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 474
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object p2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->getDefaultDownloadableSubscriptionList(IZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    .line 481
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private resolvedGetMetadataDeactivateSim(IZLandroid/app/PendingIntent;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 326
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccController;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    .line 334
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private resolvedSwitchDeactivateSim(IZLandroid/app/PendingIntent;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 490
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscription(IIZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    .line 498
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private resolvedSwitchNoPrivileges(IZLandroid/app/PendingIntent;)V
    .locals 10

    if-eqz p2, :cond_0

    .line 506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 514
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move v1, p1

    move-wide v2, v8

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IJIZLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 526
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public continueOperation(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    const-string v1, "android.service.euicc.extra.RESOLUTION_CONSENT"

    packed-switch v0, :pswitch_data_0

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown action: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EuiccOperation"

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadNoPrivilegesOrDeactivateSimCheckMetadata(IZLandroid/app/PendingIntent;)V

    return-void

    :pswitch_1
    const-string v0, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE"

    .line 294
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 293
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadConfirmationCode(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    .line 298
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadResolvableErrors(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void

    .line 312
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 311
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedSwitchNoPrivileges(IZLandroid/app/PendingIntent;)V

    return-void

    .line 307
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 306
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedSwitchDeactivateSim(IZLandroid/app/PendingIntent;)V

    return-void

    .line 302
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedGetDefaultListDeactivateSim(IZLandroid/app/PendingIntent;)V

    return-void

    .line 284
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 283
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadNoPrivileges(IZLandroid/app/PendingIntent;)V

    return-void

    .line 279
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadDeactivateSim(IZLandroid/app/PendingIntent;)V

    return-void

    .line 274
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 273
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedGetMetadataDeactivateSim(IZLandroid/app/PendingIntent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 248
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 251
    iget p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-boolean p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 253
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
