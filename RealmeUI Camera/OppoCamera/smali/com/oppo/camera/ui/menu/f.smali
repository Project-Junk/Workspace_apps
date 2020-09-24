.class public Lcom/oppo/camera/ui/menu/f;
.super Ljava/lang/Object;
.source "PopUpWindowManager.java"


# static fields
.field private static a:Lcom/oppo/camera/ui/menu/BasicOptionItemList; = null

.field private static b:Z = false

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/menu/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/oppo/camera/ui/menu/BasicOptionItemList;)V
    .locals 2

    const-string v0, "PopUpWindowManager"

    const-string v1, "showPopUpWindow"

    .line 27
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 30
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->getPopUpWindowState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/oppo/camera/ui/menu/f;->b:Z

    .line 33
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->e()V

    .line 36
    :cond_0
    sput-object p0, Lcom/oppo/camera/ui/menu/f;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    .line 37
    sget-object p0, Lcom/oppo/camera/ui/menu/f;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->c()V

    :cond_1
    return-void
.end method

.method public static a(Lcom/oppo/camera/ui/menu/e;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 139
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oppo/camera/ui/menu/f;->c:Ljava/util/ArrayList;

    .line 143
    :cond_0
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPopUpWindowBegin, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopUpWindowManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 84
    sput-boolean v0, Lcom/oppo/camera/ui/menu/f;->b:Z

    .line 86
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/e;

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1, p0}, Lcom/oppo/camera/ui/menu/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 2

    .line 48
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->getPopUpWindowState()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oppo/camera/ui/menu/f;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static b(Lcom/oppo/camera/ui/menu/e;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 151
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPopUpWindowEnd, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopUpWindowManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 98
    sput-boolean v0, Lcom/oppo/camera/ui/menu/f;->b:Z

    .line 100
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/e;

    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v1, p0}, Lcom/oppo/camera/ui/menu/e;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 56
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->getPopUpWindowState()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c()V
    .locals 2

    const-string v0, "PopUpWindowManager"

    const-string v1, "hidePopUpWindow"

    .line 64
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->d()V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidePopUpWindowBegin, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopUpWindowManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/e;

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v1, p0}, Lcom/oppo/camera/ui/menu/e;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 120
    sput-boolean p0, Lcom/oppo/camera/ui/menu/f;->b:Z

    return-void
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    sput-object v0, Lcom/oppo/camera/ui/menu/f;->a:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidePopUpWindowEnd, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopUpWindowManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/e;

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {v1, p0}, Lcom/oppo/camera/ui/menu/e;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 134
    sput-boolean p0, Lcom/oppo/camera/ui/menu/f;->b:Z

    return-void
.end method

.method public static e()V
    .locals 2

    const-string v0, "PopUpWindowManager"

    const-string v1, "clearListener"

    .line 158
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 160
    sput-boolean v0, Lcom/oppo/camera/ui/menu/f;->b:Z

    .line 162
    sget-object v0, Lcom/oppo/camera/ui/menu/f;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 164
    sput-object v0, Lcom/oppo/camera/ui/menu/f;->c:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method
