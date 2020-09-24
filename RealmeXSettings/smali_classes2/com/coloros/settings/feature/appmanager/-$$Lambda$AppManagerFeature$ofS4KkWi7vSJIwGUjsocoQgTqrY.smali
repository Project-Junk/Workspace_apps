.class public final synthetic Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$ofS4KkWi7vSJIwGUjsocoQgTqrY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

.field private final synthetic f$1:Landroid/app/Activity;

.field private final synthetic f$2:Landroidx/recyclerview/widget/RecyclerView$Adapter;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$ofS4KkWi7vSJIwGUjsocoQgTqrY;->f$0:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$ofS4KkWi7vSJIwGUjsocoQgTqrY;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$ofS4KkWi7vSJIwGUjsocoQgTqrY;->f$2:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$ofS4KkWi7vSJIwGUjsocoQgTqrY;->f$0:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$ofS4KkWi7vSJIwGUjsocoQgTqrY;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$ofS4KkWi7vSJIwGUjsocoQgTqrY;->f$2:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->lambda$initView$0$AppManagerFeature(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
