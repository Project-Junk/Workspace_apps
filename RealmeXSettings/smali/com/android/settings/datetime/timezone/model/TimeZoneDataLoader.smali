.class public Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "TimeZoneDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;,
        Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Lcom/android/settings/datetime/timezone/model/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1036
    invoke-static {}, Lcom/android/settings/datetime/timezone/model/b;->a()Lcom/android/settings/datetime/timezone/model/b;

    move-result-object v0

    return-object v0
.end method
