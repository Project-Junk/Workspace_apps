.class public Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;
.super Ljava/lang/Object;
.source "TimeZoneDataLoader.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settings/datetime/timezone/model/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$a;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->a:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->b:Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$a;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0

    .line 60
    new-instance p1, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader;

    iget-object p2, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p2, Lcom/android/settings/datetime/timezone/model/b;

    .line 1065
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->b:Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$a;

    if-eqz p1, :cond_0

    .line 1066
    invoke-interface {p1, p2}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$a;->onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/b;)V

    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settings/datetime/timezone/model/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
