.class public final synthetic Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Lcom/example/myapplication/Exp$1;->lambda$onPostExecute$1(Landroid/app/Activity;)V

    return-void
.end method
