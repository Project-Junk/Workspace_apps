.class public final Lcom/android/settings/b;
.super Ljava/lang/Object;
.source "AppWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/b$a;,
        Lcom/android/settings/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/android/settings/b$b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Landroid/appwidget/AppWidgetManager;

.field b:Lcom/android/settings/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/b$a<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/settings/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Lcom/android/settings/b$a<",
            "TItem;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/b;->c:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/b;->a:Landroid/appwidget/AppWidgetManager;

    .line 49
    iput-object p3, p0, Lcom/android/settings/b;->b:Lcom/android/settings/b$a;

    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    const-string v0, "customInfo"

    .line 61
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "AppWidgetAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 69
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    if-eqz v6, :cond_2

    .line 70
    instance-of v6, v6, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 72
    :cond_2
    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "error using EXTRA_CUSTOM_INFO index="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v4, v2

    move-object v5, v4

    goto :goto_6

    :cond_3
    const-string v5, "customExtras"

    .line 77
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_4

    const-string v0, "EXTRA_CUSTOM_INFO without EXTRA_CUSTOM_EXTRAS"

    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p2

    move-object v4, v2

    goto :goto_6

    .line 84
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_5

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "list size mismatch: EXTRA_CUSTOM_INFO: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " EXTRA_CUSTOM_EXTRAS: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_3
    if-ge v4, v5, :cond_8

    .line 95
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-eqz v3, :cond_7

    .line 96
    instance-of v3, v3, Landroid/os/Bundle;

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 99
    :cond_7
    :goto_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "error using EXTRA_CUSTOM_EXTRAS index="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    move-object v5, p2

    move-object v4, v0

    goto :goto_6

    :cond_9
    :goto_5
    const-string p2, "EXTRA_CUSTOM_INFO not present."

    .line 63
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    move-object v5, v2

    :goto_6
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v6, p1

    .line 106
    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/b;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    return-void
.end method

.method final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List<",
            "TItem;>;IZ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez p5, :cond_1

    .line 123
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_3

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/android/settings/b;->b:Lcom/android/settings/b$a;

    iget-object v4, p0, Lcom/android/settings/b;->c:Landroid/content/Context;

    if-eqz p2, :cond_2

    .line 128
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 127
    :goto_1
    invoke-interface {v3, v4, v2, v5}, Lcom/android/settings/b$a;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/b$b;

    .line 130
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
